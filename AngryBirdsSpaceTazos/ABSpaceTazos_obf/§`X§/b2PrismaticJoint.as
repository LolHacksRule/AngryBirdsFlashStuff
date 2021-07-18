package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Mat33;
   import §9t§.b2Math;
   import §9t§.b2Transform;
   import §9t§.b2Vec2;
   import §9t§.b2Vec3;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §0"6§:b2Vec2;
      
      private var §%G§:b2Vec2;
      
      private var §"P§:Number;
      
      private var §4H§:b2Vec2;
      
      private var §-m§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<T§:b2Mat33;
      
      private var §0"3§:b2Vec3;
      
      private var §!!#§:Number;
      
      private var §9H§:Number;
      
      private var §+!+§:Number;
      
      private var §3O§:Number;
      
      private var §8!R§:Number;
      
      private var §7B§:Number;
      
      private var §]U§:Boolean;
      
      private var §5!z§:Boolean;
      
      private var §?§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
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
                        loop4:
                        while(true)
                        {
                           this.§-m§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§<T§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§0"3§ = new b2Vec3();
                                 while(true)
                                 {
                                    super(param1);
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§!8§);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§@W§);
                                          addr285:
                                          while(!_loc6_)
                                          {
                                          }
                                          continue loop4;
                                          loop17:
                                          while(true)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(this.§%G§);
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§0"6§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc5_ || this)
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               this.§"P§ = param1.§+!L§;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  this.§0"3§.§@!d§();
                                                                  addr219:
                                                                  addr276:
                                                                  while(!_loc6_)
                                                                  {
                                                                     this.§!!#§ = 0;
                                                                     while(_loc5_ || _loc2_)
                                                                     {
                                                                        this.§9H§ = 0;
                                                                        continue loop19;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  while(_loc5_)
                                                                  {
                                                                     §§push(this.§%G§);
                                                                     break loop17;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr55:
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         addr260:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop17;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr260);
                                                   }
                                                   addr259:
                                                }
                                                break;
                                                addr269:
                                             }
                                             continue loop9;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr259);
                                             §§goto(addr269);
                                          }
                                       }
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          this.§+!+§ = param1.§-!L§;
                                          while(!_loc6_)
                                          {
                                             this.§3O§ = param1.§ !W§;
                                             loop24:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr207);
                                                loop28:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop24;
                                                   addr41:
                                                   if(_loc6_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr48:
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§goto(addr55);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§]U§ = param1.§+"!§;
                                                         addr129:
                                                         while(!_loc6_)
                                                         {
                                                            this.§5!z§ = param1.§+!b§;
                                                            continue loop28;
                                                         }
                                                         §§goto(addr48);
                                                      }
                                                      addr137:
                                                   }
                                                   §§goto(addr219);
                                                }
                                                continue loop2;
                                             }
                                             continue loop6;
                                             while(_loc5_ || param1)
                                             {
                                                this.§7B§ = param1.motorSpeed;
                                                §§goto(addr137);
                                             }
                                          }
                                          continue loop5;
                                          addr181:
                                       }
                                    }
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    this.§4H§.§@!d§();
                                    loop30:
                                    while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       addr83:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr85);
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                          continue loop30;
                                       }
                                       §§goto(addr285);
                                    }
                                    §§goto(addr129);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0"6§.SetV(param1.§8!<§);
            §§goto(addr276);
         }
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
         if(_loc3_)
         {
            §§push(this.§0"3§.x);
            if(_loc3_)
            {
               §§push(this.§-m§.x);
               if(!_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc2_)
                  {
                     §§push(this.§9H§);
                     if(_loc3_)
                     {
                        §§push(this.§0"3§.z);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§4H§.x);
                              if(!(_loc2_ && param1))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr79);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr113);
                           }
                           addr79:
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              addr82:
                              §§push(§§pop() * §§pop());
                              §§push(param1);
                              if(_loc3_ || param1)
                              {
                                 addr91:
                                 §§push(this.§0"3§.x);
                                 if(_loc3_)
                                 {
                                    addr96:
                                    §§push(this.§-m§.y);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc3_)
                                       {
                                          addr104:
                                          §§push(this.§9H§);
                                          if(_loc3_ || param1)
                                          {
                                             addr113:
                                             §§push(this.§0"3§.z);
                                             if(!_loc2_)
                                             {
                                                §§goto(addr140);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr104);
                              }
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr91);
               }
               addr140:
               §§push(§§pop() + §§pop());
               if(_loc3_ || _loc3_)
               {
                  addr136:
                  §§push(this.§4H§.y);
               }
               return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
            }
         }
         §§goto(addr82);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
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
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2;
         §§push((_loc8_ = _loc1_.§+!y§(this.§0"6§)).x);
         if(!_loc11_)
         {
            §§push(_loc6_);
            if(!_loc11_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_ || _loc1_)
               {
                  §§push(_loc8_.y);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * _loc7_);
                     if(_loc11_ && _loc1_)
                     {
                     }
                     §§goto(addr118);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_)
                  {
                     addr116:
                     §§push(Number(§§pop()));
                  }
               }
               §§push(§§pop());
            }
            addr118:
            var _loc9_:* = §§pop();
            return §§pop();
         }
         §§goto(addr116);
      }
      
      public function §1! §() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::<!1;
         var _loc2_:b2Body = b2internal::?H;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc21_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc21_ && _loc2_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!(_loc21_ && _loc2_))
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc21_ && _loc2_))
            {
               §§push(_loc4_);
               if(_loc22_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc22_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc22_ || _loc3_)
                     {
                        addr100:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_ || _loc1_)
                     {
                        addr111:
                        var _loc6_:* = Number(§§pop());
                        if(_loc22_)
                        {
                           §§push(_loc3_.col1.y);
                           if(!_loc21_)
                           {
                              §§push(_loc4_);
                              if(!(_loc21_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc22_)
                                 {
                                    addr130:
                                    §§push(_loc3_.col2.y);
                                    if(!(_loc21_ && this))
                                    {
                                       addr140:
                                       §§push(§§pop() * _loc5_);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc21_ && _loc2_))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc22_)
                                          {
                                             addr156:
                                             §§push(_loc6_);
                                             if(_loc22_)
                                             {
                                                addr160:
                                                _loc4_ = Number(§§pop());
                                             }
                                             §§goto(addr160);
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc22_ || _loc3_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc22_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(_loc22_ || _loc1_)
                                             {
                                                addr202:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc8_:* = §§pop();
                                             if(_loc22_)
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
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc22_ || this)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc22_ || _loc2_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop0;
                                                                              loop11:
                                                                              while(!(_loc21_ && _loc1_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc22_ || _loc3_)
                                                                                    {
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!(_loc21_ && this))
                                                                                          {
                                                                                             addr226:
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                _loc7_ = §§pop();
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§push(_loc1_.m_sweep.c.x);
                                                                                                      if(_loc22_ || _loc1_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   break loop0;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             while(_loc22_)
                                                                                             {
                                                                                                §§push(_loc3_.col2);
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc21_ && _loc2_)
                                                                                                                  {
                                                                                                                     addr345:
                                                                                                                     §§push(_loc4_);
                                                                                                                     break loop12;
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc8_ = §§pop();
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            addr274:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr346:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc22_ || _loc2_)
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   break loop6;
                                                                                                   addr263:
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr254:
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                       addr244:
                                                                                       while(!_loc21_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§goto(addr254);
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                       }
                                                                                       continue loop2;
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr346);
                                                                     }
                                                                     addr355:
                                                                     var _loc9_:* = §§pop();
                                                                     §§push(_loc1_.m_sweep.c.y);
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(§§pop() + _loc5_);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc10_:* = §§pop();
                                                                     §§push(_loc2_.m_sweep.c.x);
                                                                     if(_loc22_)
                                                                     {
                                                                        §§push(§§pop() + _loc7_);
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           addr383:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc11_:* = §§pop();
                                                                        §§push(_loc2_.m_sweep.c.y);
                                                                        if(!(_loc21_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() + _loc8_);
                                                                           if(!(_loc21_ && this))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc12_:* = §§pop();
                                                                        §§push(_loc11_);
                                                                        if(_loc22_)
                                                                        {
                                                                           §§push(§§pop() - _loc9_);
                                                                           if(_loc22_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc13_:* = §§pop();
                                                                        §§push(_loc12_);
                                                                        if(_loc22_ || this)
                                                                        {
                                                                           §§push(§§pop() - _loc10_);
                                                                           if(_loc22_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc14_:* = §§pop();
                                                                        var _loc15_:b2Vec2 = _loc1_.§+!y§(this.§0"6§);
                                                                        var _loc16_:b2Vec2 = _loc1_.§?o§;
                                                                        var _loc17_:b2Vec2 = _loc2_.§?o§;
                                                                        §§push(_loc1_.m_angularVelocity);
                                                                        if(!(_loc21_ && _loc1_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc18_:* = §§pop();
                                                                        §§push(_loc2_.m_angularVelocity);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc19_:* = §§pop();
                                                                        §§push(_loc13_);
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           §§push(_loc18_);
                                                                           if(!(_loc21_ && _loc3_))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc22_ || _loc1_)
                                                                              {
                                                                                 §§push(_loc15_.y);
                                                                                 if(!(_loc21_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc22_ || this)
                                                                                    {
                                                                                       addr502:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc21_ && _loc3_))
                                                                                       {
                                                                                          §§push(_loc14_);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(_loc18_);
                                                                                             if(!(_loc21_ && _loc3_))
                                                                                             {
                                                                                                addr521:
                                                                                                §§push(_loc15_.x);
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc22_ || _loc3_)
                                                                                                         {
                                                                                                            addr539:
                                                                                                            §§push(_loc15_.x);
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               addr543:
                                                                                                               §§push(_loc17_.x);
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(_loc22_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr563:
                                                                                                                        §§push(_loc8_);
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              addr569:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 addr572:
                                                                                                                                 §§push(_loc16_.x);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          addr582:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr649:
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             addr652:
                                                                                                                                             §§push(§§pop() * _loc4_);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                          if(_loc22_ || this)
                                                                                                                                          {
                                                                                                                                             addr664:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc22_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr684:
                                                                                                                                                return Number(§§pop());
                                                                                                                                                addr683:
                                                                                                                                             }
                                                                                                                                             §§goto(addr683);
                                                                                                                                          }
                                                                                                                                          §§goto(addr684);
                                                                                                                                       }
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc22_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   §§push(_loc15_.y);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                      if(_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                         if(_loc22_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr634:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr637:
                                                                                                                                                                     §§push(_loc16_.y);
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        addr641:
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc21_ && _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr649);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr649);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr652);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr634);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr649);
                                                                                                                                                }
                                                                                                                                                §§goto(addr684);
                                                                                                                                             }
                                                                                                                                             §§goto(addr649);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                    §§goto(addr649);
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              §§goto(addr649);
                                                                                                                           }
                                                                                                                           §§goto(addr582);
                                                                                                                        }
                                                                                                                        §§goto(addr641);
                                                                                                                     }
                                                                                                                     §§goto(addr582);
                                                                                                                  }
                                                                                                                  §§goto(addr563);
                                                                                                               }
                                                                                                               §§goto(addr582);
                                                                                                            }
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr684);
                                                                                                   }
                                                                                                   §§goto(addr572);
                                                                                                }
                                                                                                §§goto(addr569);
                                                                                             }
                                                                                             §§goto(addr572);
                                                                                          }
                                                                                          §§goto(addr543);
                                                                                       }
                                                                                       §§goto(addr539);
                                                                                    }
                                                                                    §§goto(addr602);
                                                                                 }
                                                                                 §§goto(addr521);
                                                                              }
                                                                              §§goto(addr664);
                                                                           }
                                                                           §§goto(addr502);
                                                                        }
                                                                        §§goto(addr684);
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr355);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr293);
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr111);
               }
               §§goto(addr100);
            }
            §§goto(addr111);
         }
         §§goto(addr72);
      }
      
      public function §5C§() : Boolean
      {
         return this.§]U§;
      }
      
      public function §;F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::<!1.SetAwake(true);
            while(true)
            {
               b2internal::?H.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§]U§ = param1;
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
         if(_loc3_)
         {
            b2internal::<!1.SetAwake(true);
         }
         loop0:
         while(true)
         {
            b2internal::?H.SetAwake(true);
            while(true)
            {
               this.§+!+§ = param1;
               while(!_loc4_)
               {
                  continue loop0;
                  this.§3O§ = param2;
                  if(_loc3_ || this)
                  {
                     return;
                  }
               }
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
            while(true)
            {
               b2internal::?H.SetAwake(true);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§5!z§ = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §+K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::<!1.SetAwake(true);
            do
            {
               b2internal::?H.SetAwake(true);
               do
               {
                  this.§7B§ = param1;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §2"5§() : Number
      {
         return this.§7B§;
      }
      
      public function §`"6§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::<!1.SetAwake(true);
            while(true)
            {
               b2internal::?H.SetAwake(true);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§8!R§ = param1;
            if(!(_loc3_ && this))
            {
               if(!(_loc3_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
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
