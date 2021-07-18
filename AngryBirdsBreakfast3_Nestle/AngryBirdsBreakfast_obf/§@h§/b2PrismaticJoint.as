package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Mat33;
   import §@!E§.b2Math;
   import §@!E§.b2Transform;
   import §@!E§.b2Vec2;
   import §@!E§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9"5§:b2Vec2;
      
      private var §&!6§:b2Vec2;
      
      private var §?"-§:Number;
      
      private var §0E§:b2Vec2;
      
      private var §-D§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § U§:b2Mat33;
      
      private var §6!h§:b2Vec3;
      
      private var §=!l§:Number;
      
      private var §8!`§:Number;
      
      private var §>!Z§:Number;
      
      private var §`"$§:Number;
      
      private var §4"$§:Number;
      
      private var §%! §:Number;
      
      private var §2!%§:Boolean;
      
      private var §"Z§:Boolean;
      
      private var §@'§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && this))
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
                        while(true)
                        {
                           this.§-D§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§ U§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§6!h§ = new b2Vec3();
                                 while(true)
                                 {
                                    super(param1);
                                    continue loop0;
                                    loop22:
                                    for(; !(_loc5_ && param1); if(_loc6_ || param1)
                                    {
                                       return;
                                    })
                                    {
                                       this.§`"$§ = param1.§2!$§;
                                       loop23:
                                       while(true)
                                       {
                                          this.§4"$§ = param1.§;d§;
                                          loop24:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr137:
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                         addr301:
                                                      }
                                                      this.§%! § = param1.motorSpeed;
                                                      loop25:
                                                      while(_loc6_ || this)
                                                      {
                                                         this.§2!%§ = param1.§05§;
                                                         loop26:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  this.§"Z§ = param1.§9!g§;
                                                                  loop27:
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     this.§@'§ = b2internal::-G;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        continue loop26;
                                                                        addr47:
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                     }
                                                                     continue loop24;
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop27;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§9"5§.SetV(param1.§2"#§);
                                                                        break loop26;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                                  addr95:
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop25;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§&!6§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§9"5§);
                                                               addr261:
                                                               addr280:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(-§§pop());
                                                                  }
                                                                  addr270:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     addr246:
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc6_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     while(true)
                                                                     {
                                                                        this.§?"-§ = param1.§7!L§;
                                                                        continue loop2;
                                                                        §§goto(addr137);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!6§);
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§push(this.§9"5§);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§goto(addr246);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr261);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         this.m_localAnchor2.SetV(param1.§@"$§);
                                                         §§goto(addr294);
                                                         §§goto(addr120);
                                                      }
                                                      addr120:
                                                      continue loop0;
                                                   }
                                                   §§goto(addr255);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr187:
                                                         if(_loc5_ && this)
                                                         {
                                                            break;
                                                         }
                                                         this.§>!Z§ = param1.§;!W§;
                                                         continue loop22;
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      this.§=!l§ = 0;
                                                      continue loop3;
                                                      §§goto(addr187);
                                                   }
                                                   addr170:
                                                   addr211:
                                                }
                                                while(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop4;
                                             }
                                             continue loop23;
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
         §§goto(addr280);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§6!h§.x);
            if(_loc2_)
            {
               §§push(this.§-D§.x);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || this)
                  {
                     §§push(this.§8!`§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.§6!h§.z);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && param1))
                           {
                              §§push(this.§0E§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    addr83:
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       addr87:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr95:
                                          §§push(this.§6!h§.x);
                                          if(!(_loc3_ && param1))
                                          {
                                             addr105:
                                             §§push(this.§-D§.y);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc2_)
                                                {
                                                   addr118:
                                                   §§push(this.§8!`§);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(this.§6!h§.z);
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                      addr149:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr145:
                                                         §§push(this.§0E§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr145);
                                                }
                                             }
                                             §§goto(addr145);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr149);
               }
               §§goto(addr83);
            }
            §§goto(addr95);
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
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
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc3_))
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
                     if(_loc10_ || _loc2_)
                     {
                        §§push(_loc8_.y);
                        if(_loc10_)
                        {
                           §§push(§§pop() * _loc7_);
                           if(_loc10_)
                           {
                              addr118:
                              §§push(§§pop() + §§pop());
                              if(!(_loc11_ && _loc2_))
                              {
                                 addr137:
                                 §§push(Number(§§pop()));
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr137);
                           }
                        }
                        var _loc9_:* = §§pop();
                        return §§pop();
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr118);
               }
               §§goto(addr137);
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
         if(_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc21_ || _loc1_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!(_loc22_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(_loc21_ || _loc3_)
         {
            §§push(_loc4_);
            if(!(_loc22_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc22_ && _loc2_))
               {
                  addr94:
                  §§push(_loc3_.col2.x);
                  if(_loc21_ || _loc1_)
                  {
                     addr104:
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc22_)
                  {
                     addr109:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  if(!(_loc22_ && this))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc21_)
                     {
                        §§push(_loc4_);
                        if(!(_loc22_ && _loc1_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc21_ || this)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc21_)
                              {
                                 addr144:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc21_)
                              {
                                 addr149:
                                 §§push(Number(§§pop()));
                                 if(_loc21_ || _loc1_)
                                 {
                                    addr157:
                                    _loc5_ = §§pop();
                                    if(!_loc22_)
                                    {
                                       addr160:
                                       §§push(_loc6_);
                                       if(_loc21_ || _loc1_)
                                       {
                                          addr169:
                                          _loc4_ = Number(§§pop());
                                       }
                                       §§goto(addr169);
                                    }
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(_loc21_ || _loc1_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(!_loc22_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(!_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!_loc22_)
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
                                                if(!(_loc22_ && _loc2_))
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
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc22_ && _loc1_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc21_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.col1);
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              if(!_loc22_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop9:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_.col2);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!(_loc21_ || _loc1_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc21_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc22_ && _loc1_))
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc22_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      break;
                                                                                                      addr284:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                            }
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         if(!(_loc22_ && _loc2_))
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc21_ || _loc2_))
                                                                                                                     {
                                                                                                                        break loop6;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr358:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop8;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   continue loop1;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop3;
                                                                                    }
                                                                                    addr350:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_ || this)
                                                                                    {
                                                                                       §§goto(addr358);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr284);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr369:
                                                                        var _loc9_:* = §§pop();
                                                                        §§push(_loc1_.m_sweep.c.y);
                                                                        if(_loc21_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + _loc5_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(§§pop() + _loc7_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr397:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                           if(_loc21_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() + _loc8_);
                                                                              if(!(_loc22_ && _loc2_))
                                                                              {
                                                                                 addr419:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc11_);
                                                                              if(_loc21_ || _loc1_)
                                                                              {
                                                                                 §§push(§§pop() - _loc9_);
                                                                                 if(!(_loc22_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!(_loc22_ && this))
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    addr457:
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
                                                                                 if(_loc21_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc19_:* = §§pop();
                                                                                 §§push(_loc13_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(_loc15_.y);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc22_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   §§goto(addr519);
                                                                                                }
                                                                                                §§goto(addr543);
                                                                                             }
                                                                                             §§goto(addr646);
                                                                                          }
                                                                                          §§goto(addr655);
                                                                                       }
                                                                                       §§goto(addr547);
                                                                                    }
                                                                                    §§goto(addr646);
                                                                                 }
                                                                                 addr519:
                                                                                 §§push(_loc14_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc15_.x);
                                                                                       if(_loc21_ || _loc2_)
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
                                                                                                   addr543:
                                                                                                   §§push(_loc15_.x);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr547:
                                                                                                      §§push(_loc17_.x);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc19_);
                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            if(_loc21_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!(_loc22_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr583:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        addr586:
                                                                                                                        §§push(_loc16_.x);
                                                                                                                        if(!(_loc22_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(!(_loc22_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(!(_loc22_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    addr614:
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    if(_loc21_ || this)
                                                                                                                                    {
                                                                                                                                       addr622:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!(_loc22_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr630:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc21_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             addr638:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr646:
                                                                                                                                                §§push(_loc15_.y);
                                                                                                                                                if(_loc21_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr655:
                                                                                                                                                   §§push(_loc17_.y);
                                                                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr664:
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc21_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr683:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc21_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr691:
                                                                                                                                                                  §§push(_loc16_.y);
                                                                                                                                                                  if(!_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        addr698:
                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr709);
                                                                                                                                                                     }
                                                                                                                                                                     addr709:
                                                                                                                                                                     §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                     if(_loc22_ && this)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr733);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr698);
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr683);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr691);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr733);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr698);
                                                                                                                                 }
                                                                                                                                 §§goto(addr664);
                                                                                                                              }
                                                                                                                              §§goto(addr698);
                                                                                                                           }
                                                                                                                           §§goto(addr655);
                                                                                                                        }
                                                                                                                        §§goto(addr664);
                                                                                                                     }
                                                                                                                     §§goto(addr655);
                                                                                                                  }
                                                                                                                  §§goto(addr698);
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                            §§goto(addr630);
                                                                                                         }
                                                                                                         §§goto(addr583);
                                                                                                      }
                                                                                                      §§goto(addr586);
                                                                                                   }
                                                                                                   §§goto(addr733);
                                                                                                }
                                                                                                §§goto(addr731);
                                                                                             }
                                                                                             §§goto(addr646);
                                                                                          }
                                                                                          §§goto(addr638);
                                                                                       }
                                                                                       §§goto(addr614);
                                                                                    }
                                                                                    §§goto(addr638);
                                                                                 }
                                                                                 addr733:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr731:
                                                                                    return Number(§§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                           §§goto(addr419);
                                                                        }
                                                                        §§goto(addr397);
                                                                     }
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr350);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr369);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr233);
                                 }
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr160);
               }
               §§goto(addr109);
            }
            §§goto(addr104);
         }
         §§goto(addr94);
      }
      
      public function §"!&§() : Boolean
      {
         return this.§2!%§;
      }
      
      public function §&"8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§2!%§ = param1;
            if(_loc2_ || param1)
            {
               if(_loc2_ || this)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            b2internal::9!F.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               loop1:
               while(true)
               {
                  this.§>!Z§ = param1;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§`"$§ = param2;
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr64);
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§"Z§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§"Z§ = param1;
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §2",§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            b2internal::9!F.SetAwake(true);
            do
            {
               b2internal::[!n.SetAwake(true);
               do
               {
                  this.§%! § = param1;
               }
               while(!(_loc2_ || _loc3_));
               
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §>g§() : Number
      {
         return this.§%! §;
      }
      
      public function §&!q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::9!F.SetAwake(true);
            while(true)
            {
               b2internal::[!n.SetAwake(true);
               while(_loc3_)
               {
                  this.§4"$§ = param1;
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
