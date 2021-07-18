package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §2!L§:b2Vec2;
      
      private var §'_§:b2Vec2;
      
      private var §1!?§:b2Vec2;
      
      private var §@!L§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §9!S§:b2Mat22;
      
      private var §2!_§:b2Vec2;
      
      private var §!K§:Number;
      
      private var §3!1§:Number;
      
      private var §4"'§:Number;
      
      private var §1!K§:Number;
      
      private var § !I§:Number;
      
      private var §+"$§:Number;
      
      private var §9!=§:Boolean;
      
      private var §3!A§:Boolean;
      
      private var §@!3§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§2!L§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§'_§ = new b2Vec2();
                     loop3:
                     while(!_loc5_)
                     {
                        this.§1!?§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§@!L§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§9!S§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§2!_§ = new b2Vec2();
                                 loop7:
                                 while(true)
                                 {
                                    super(param1);
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§-!,§);
                                       continue loop2;
                                       addr57:
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop7;
                                       }
                                       this.§@!L§.§%y§();
                                       addr66:
                                       if(_loc5_)
                                       {
                                          addr50:
                                          while(_loc6_ || _loc2_)
                                          {
                                             §§goto(addr57);
                                             §§goto(addr66);
                                          }
                                          loop21:
                                          while(true)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_)
                                                {
                                                   this.§1!K§ = param1.§3!t§;
                                                   while(true)
                                                   {
                                                      this.§ !I§ = param1.§%!7§;
                                                      addr122:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr200:
                                                         while(true)
                                                         {
                                                            this.§!K§ = 0;
                                                            break loop21;
                                                         }
                                                      }
                                                      addr239:
                                                      while(true)
                                                      {
                                                         §§push(this.§'_§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this.§2!L§);
                                                            addr227:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               addr228:
                                                               while(true)
                                                               {
                                                                  §§push(-§§pop());
                                                                  addr229:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     addr230:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr139:
                                                }
                                                break;
                                             }
                                             addr169:
                                             while(!(_loc5_ && param1))
                                             {
                                                this.§4"'§ = param1.§9V§;
                                                continue loop21;
                                             }
                                             §§goto(addr230);
                                          }
                                          addr50:
                                          while(true)
                                          {
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr221);
                                          }
                                          continue loop6;
                                       }
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      this.§9!=§ = param1.§5!!§;
                                                      loop25:
                                                      while(true)
                                                      {
                                                         this.§3!A§ = param1.§<!0§;
                                                         addr91:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§@!3§ = b2internal::>Q;
                                                                     addr71:
                                                                     addr246:
                                                                     while(!(_loc5_ && this))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§2!L§.SetV(param1.§""'§);
                                                                        §§goto(addr239);
                                                                        §§goto(addr71);
                                                                     }
                                                                  }
                                                                  return;
                                                                  addr45:
                                                                  addr100:
                                                               }
                                                               break;
                                                            }
                                                            continue loop25;
                                                         }
                                                         §§goto(addr139);
                                                      }
                                                   }
                                                   §§goto(addr122);
                                                }
                                                continue loop5;
                                                addr112:
                                             }
                                             if(_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr45);
                                          }
                                          §§goto(addr91);
                                       }
                                       §§goto(addr71);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr100);
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§2!_§.x);
            if(!_loc2_)
            {
               §§push(this.§@!L§.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     §§push(this.§3!1§);
                     if(_loc3_)
                     {
                        §§push(this.§2!_§.y);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(this.§1!?§.x);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr84:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       addr87:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          addr91:
                                          §§push(this.§2!_§.x);
                                          if(!_loc2_)
                                          {
                                             addr96:
                                             §§push(this.§@!L§.y);
                                             if(_loc3_)
                                             {
                                                addr101:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr119:
                                                   §§push(this.§3!1§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§2!_§.y);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr140);
                                                      }
                                                      addr140:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr136:
                                                         §§push(this.§1!?§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr136);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr96);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr91);
               }
               §§goto(addr84);
            }
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§2!_§.y;
         }
      }
      
      public function §-"<§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc1_))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc10_ || _loc1_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc11_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§^"C§(this.§2!L§)).x);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || _loc3_)
                  {
                     §§push(_loc8_.y);
                     if(!_loc11_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(!(_loc11_ && _loc2_))
                        {
                           addr123:
                           §§push(§§pop() + §§pop());
                           if(_loc10_ || _loc2_)
                           {
                              addr132:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr132);
                        }
                     }
                     var _loc9_:* = §§pop();
                     return §§pop();
                  }
                  §§goto(addr132);
               }
               §§goto(addr123);
            }
            §§goto(addr132);
         }
         §§goto(addr51);
      }
      
      public function §[Y§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_ || _loc1_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(!_loc21_)
         {
            §§push(_loc4_);
            if(_loc22_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc21_)
               {
                  §§push(_loc3_.col2.x);
                  if(_loc22_ || _loc3_)
                  {
                     addr85:
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc22_ || _loc3_)
                  {
                  }
                  addr96:
                  var _loc6_:* = §§pop();
                  if(_loc22_ || _loc3_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc22_ || this)
                     {
                        §§push(_loc4_);
                        if(_loc22_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_)
                           {
                              addr120:
                              §§push(_loc3_.col2.y);
                              if(_loc22_)
                              {
                                 addr127:
                                 §§push(§§pop() + §§pop() * _loc5_);
                                 if(_loc22_)
                                 {
                                    addr130:
                                    §§push(Number(§§pop()));
                                    if(_loc22_ || _loc1_)
                                    {
                                       addr138:
                                       _loc5_ = §§pop();
                                       addr156:
                                       if(_loc22_ || this)
                                       {
                                          §§push(_loc6_);
                                          if(_loc22_ || _loc3_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
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
                                       if(!(_loc21_ && _loc3_))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(!_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc21_)
                                       {
                                          §§push(_loc3_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc22_)
                                             {
                                                §§push(_loc7_);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc22_)
                                                         {
                                                            §§push(_loc8_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            addr297:
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc21_ && _loc3_))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_.col1);
                                                                        if(_loc22_)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(_loc22_ || this)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    §§push(_loc3_.col2);
                                                                                    if(!(_loc21_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(!(_loc21_ && _loc2_))
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                addr269:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      break loop6;
                                                                                                   }
                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         continue;
                                                                                                         addr283:
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr297);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc22_ || this)
                                                                                       {
                                                                                          break loop6;
                                                                                       }
                                                                                       break loop0;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           break loop0;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  addr308:
                                                               }
                                                               break;
                                                            }
                                                            break loop0;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          var _loc9_:* = §§pop();
                                          §§push(_loc1_.m_sweep.c.y);
                                          if(!_loc21_)
                                          {
                                             §§push(§§pop() + _loc5_);
                                             if(!(_loc21_ && this))
                                             {
                                                addr356:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc2_.m_sweep.c.x);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() + _loc7_);
                                                if(!_loc21_)
                                                {
                                                   addr368:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc2_.m_sweep.c.y);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() + _loc8_);
                                                   if(_loc22_)
                                                   {
                                                      addr380:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc11_);
                                                   if(!(_loc21_ && this))
                                                   {
                                                      §§push(§§pop() - _loc9_);
                                                      if(!(_loc21_ && _loc2_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc13_:* = §§pop();
                                                   §§push(_loc12_);
                                                   if(!(_loc21_ && this))
                                                   {
                                                      §§push(§§pop() - _loc10_);
                                                      if(_loc22_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc14_:* = §§pop();
                                                   var _loc15_:b2Vec2 = _loc1_.§^"C§(this.§2!L§);
                                                   var _loc16_:b2Vec2 = _loc1_.§"!_§;
                                                   var _loc17_:b2Vec2 = _loc2_.§"!_§;
                                                   §§push(_loc1_.m_angularVelocity);
                                                   if(_loc22_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc18_:* = §§pop();
                                                   §§push(_loc2_.m_angularVelocity);
                                                   if(_loc22_ || _loc3_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc19_:* = §§pop();
                                                   §§push(_loc13_);
                                                   if(_loc22_ || this)
                                                   {
                                                      §§push(_loc18_);
                                                      if(!(_loc21_ && _loc1_))
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc21_)
                                                         {
                                                            §§push(_loc15_.y);
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc21_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc21_ && _loc3_))
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(_loc22_ || _loc2_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(_loc15_.x);
                                                                           if(_loc22_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc21_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       addr524:
                                                                                       §§push(_loc15_.x);
                                                                                       if(!(_loc21_ && this))
                                                                                       {
                                                                                          addr533:
                                                                                          §§push(_loc17_.x);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             §§push(_loc19_);
                                                                                             if(!(_loc21_ && _loc3_))
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            §§push(_loc16_.x);
                                                                                                            if(_loc22_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc21_ && _loc1_))
                                                                                                               {
                                                                                                                  addr574:
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc22_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr591:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 addr594:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc22_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    addr602:
                                                                                                                                    §§push(_loc15_.y);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       addr606:
                                                                                                                                       §§push(_loc17_.y);
                                                                                                                                       if(_loc22_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr615:
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             if(!(_loc21_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc22_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      addr632:
                                                                                                                                                      §§push(_loc16_.y);
                                                                                                                                                      if(!_loc21_)
                                                                                                                                                      {
                                                                                                                                                         addr660:
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            addr649:
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc22_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr657:
                                                                                                                                                               §§push(§§pop() * _loc4_);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                         if(_loc22_)
                                                                                                                                                         {
                                                                                                                                                            addr664:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc22_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr674:
                                                                                                                                                               return Number(§§pop());
                                                                                                                                                               addr673:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr673);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr674);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr660);
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr660);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr657);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr660);
                                                                                                                                 }
                                                                                                                                 §§goto(addr664);
                                                                                                                              }
                                                                                                                              §§goto(addr660);
                                                                                                                           }
                                                                                                                           §§goto(addr649);
                                                                                                                        }
                                                                                                                        §§goto(addr660);
                                                                                                                     }
                                                                                                                     §§goto(addr591);
                                                                                                                  }
                                                                                                                  §§goto(addr649);
                                                                                                               }
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr574);
                                                                                                      }
                                                                                                      §§goto(addr615);
                                                                                                   }
                                                                                                   §§goto(addr657);
                                                                                                }
                                                                                                §§goto(addr632);
                                                                                             }
                                                                                             §§goto(addr591);
                                                                                          }
                                                                                          §§goto(addr574);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr674);
                                                                                 }
                                                                                 §§goto(addr664);
                                                                              }
                                                                           }
                                                                           §§goto(addr660);
                                                                        }
                                                                        §§goto(addr594);
                                                                     }
                                                                  }
                                                                  §§goto(addr674);
                                                               }
                                                               §§goto(addr533);
                                                            }
                                                            §§goto(addr606);
                                                         }
                                                         §§goto(addr664);
                                                      }
                                                      §§goto(addr602);
                                                   }
                                                   §§goto(addr524);
                                                }
                                                §§goto(addr380);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr356);
                                       }
                                       §§goto(addr308);
                                    }
                                    _loc4_ = §§pop();
                                    §§goto(addr156);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr127);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr138);
               }
               §§goto(addr96);
               §§push(Number(§§pop()));
            }
            §§goto(addr85);
         }
         §§goto(addr96);
      }
      
      public function §6m§() : Boolean
      {
         return this.§9!=§;
      }
      
      public function §[g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::3"X.SetAwake(true);
         }
         while(true)
         {
            b2internal::5!.SetAwake(true);
            while(!(_loc2_ && param1))
            {
               this.§9!=§ = param1;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §1I§() : Number
      {
         return this.§4"'§;
      }
      
      public function §=@§() : Number
      {
         return this.§1!K§;
      }
      
      public function §=!d§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            b2internal::3"X.SetAwake(true);
            while(true)
            {
               b2internal::5!.SetAwake(true);
               while(!_loc3_)
               {
                  this.§4"'§ = param1;
                  while(_loc4_ || param1)
                  {
                     this.§1!K§ = param2;
                     if(_loc4_ || _loc3_)
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §-"0§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function §1![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            b2internal::3"X.SetAwake(true);
         }
         do
         {
            b2internal::5!.SetAwake(true);
            do
            {
               this.§3!A§ = param1;
            }
            while(!(_loc3_ || _loc3_));
            
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::3"X.SetAwake(true);
            while(true)
            {
               b2internal::5!.SetAwake(true);
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§+"$§ = param1;
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §+"E§() : Number
      {
         return this.§+"$§;
      }
      
      public function §&!h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            b2internal::3"X.SetAwake(true);
            do
            {
               b2internal::5!.SetAwake(true);
               do
               {
                  this.§ !I§ = param1;
               }
               while(!_loc3_);
               
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §4"I§() : Number
      {
         return this.§ !I§;
      }
      
      public function §'=§() : Number
      {
         return this.§3!1§;
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
