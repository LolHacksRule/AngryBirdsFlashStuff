package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!@§:b2Vec2;
      
      private var §%u§:b2Vec2;
      
      private var §0G§:b2Vec2;
      
      private var §9N§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,W§:b2Mat22;
      
      private var §12§:b2Vec2;
      
      private var §!b§:Number;
      
      private var §!!X§:Number;
      
      private var §;!`§:Number;
      
      private var §6;§:Number;
      
      private var §=&§:Number;
      
      private var §?T§:Number;
      
      private var §?!c§:Boolean;
      
      private var §6!P§:Boolean;
      
      private var §"B§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
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
                  this.§>!@§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§%u§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§0G§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§9N§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§,W§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§12§ = new b2Vec2();
                                 loop7:
                                 while(_loc6_)
                                 {
                                    continue loop0;
                                    loop15:
                                    while(true)
                                    {
                                       if(_loc5_ && _loc2_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(this.§%u§);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       §§push(this.§>!@§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_ || param1)
                                          {
                                             §§pop().y = §§pop();
                                             loop16:
                                             while(true)
                                             {
                                                this.§12§.§^!,§();
                                                while(true)
                                                {
                                                   this.§!b§ = 0;
                                                   addr189:
                                                   while(!(_loc5_ && this))
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr177:
                                                   continue loop15;
                                                   loop19:
                                                   while(!(_loc5_ && param1))
                                                   {
                                                      this.§;!`§ = param1.§<T§;
                                                      loop20:
                                                      while(true)
                                                      {
                                                         this.§6;§ = param1.§[g§;
                                                         addr145:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop4;
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr117:
                                                               if(_loc5_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop20;
                                                            loop25:
                                                            while(_loc6_ || _loc3_)
                                                            {
                                                               this.§"B§ = b2internal::7t;
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     addr76:
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        this.§0G§.§^!,§();
                                                                        addr259:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§>!@§.SetV(param1.§^>§);
                                                                           break loop26;
                                                                        }
                                                                        addr259:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr137:
                                                                  while(!_loc5_)
                                                                  {
                                                                     this.§?T§ = param1.motorSpeed;
                                                                     break loop25;
                                                                  }
                                                                  §§goto(addr145);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr102:
                                                                     addr266:
                                                                     while(_loc6_)
                                                                     {
                                                                        this.§6!P§ = param1.§;`§;
                                                                        continue loop25;
                                                                     }
                                                                     while(_loc6_)
                                                                     {
                                                                        this.m_localAnchor2.SetV(param1.§=i§);
                                                                        §§goto(addr259);
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§%u§);
                                                                  break loop15;
                                                                  §§goto(addr76);
                                                               }
                                                            }
                                                         }
                                                         addr273:
                                                         while(true)
                                                         {
                                                            this.m_localAnchor1.SetV(param1.§@b§);
                                                            §§goto(addr266);
                                                            §§goto(addr117);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(_loc6_)
                                             {
                                                §§push(-§§pop());
                                             }
                                          }
                                          addr233:
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop15;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr233);
                                       §§goto(addr245);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr259);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§12§.x);
            if(!_loc2_)
            {
               §§push(this.§9N§.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc2_)
                  {
                     addr34:
                     §§push(this.§!!X§);
                     if(_loc3_)
                     {
                        §§push(this.§12§.y);
                        if(_loc3_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§0G§.x);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    addr79:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       addr83:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                       }
                                       §§goto(addr137);
                                    }
                                    §§push(this.§12§.x);
                                    if(!_loc2_)
                                    {
                                       addr91:
                                       §§push(this.§9N§.y);
                                       if(_loc3_)
                                       {
                                          addr96:
                                          §§push(§§pop() * §§pop());
                                          if(_loc3_)
                                          {
                                             addr99:
                                             §§push(this.§!!X§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr108:
                                                §§push(this.§12§.y);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr135:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr131:
                                                      §§push(this.§0G§.y);
                                                   }
                                                   addr137:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() * (§§pop() + §§pop()));
                                                }
                                                §§goto(addr135);
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr108);
                                    }
                                    §§goto(addr99);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr137);
               }
               §§goto(addr79);
            }
            §§goto(addr34);
         }
         §§goto(addr83);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            return §§pop() * this.§12§.y;
         }
      }
      
      public function §%!]§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#A;
         var _loc2_:b2Body = b2internal::2!`;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(_loc10_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_ || _loc2_)
            {
               addr87:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§7c§(this.§>!@§)).x);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_)
                  {
                     §§push(_loc8_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_ || _loc1_)
                        {
                        }
                        §§goto(addr138);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc11_)
                     {
                     }
                     addr137:
                     addr138:
                     var _loc9_:* = §§pop();
                     return §§pop();
                     §§push(§§pop());
                  }
                  §§goto(addr137);
                  §§push(Number(§§pop()));
               }
               §§goto(addr138);
            }
            §§goto(addr137);
         }
         §§goto(addr87);
      }
      
      public function §?!D§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#A;
         var _loc2_:b2Body = b2internal::2!`;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_ || _loc2_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc22_ && _loc3_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(!_loc22_)
         {
            §§push(_loc4_);
            if(_loc21_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc21_)
               {
                  addr89:
                  §§push(_loc3_.col2.x);
                  if(_loc21_)
                  {
                     addr94:
                     §§push(§§pop() * _loc5_);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc22_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc6_:* = §§pop();
               if(!(_loc22_ && this))
               {
                  §§push(_loc3_.col1.y);
                  if(_loc21_)
                  {
                     §§push(_loc4_);
                     if(_loc21_ || _loc1_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc22_ && _loc3_))
                        {
                           §§push(_loc3_.col2.y);
                           if(!_loc22_)
                           {
                              addr139:
                              §§push(§§pop() * _loc5_);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc21_ || _loc2_)
                           {
                           }
                           addr159:
                           _loc4_ = §§pop();
                           _loc3_ = _loc2_.m_xf.R;
                           §§push(this.m_localAnchor2.x);
                           if(_loc21_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(!(_loc22_ && _loc2_))
                              {
                                 addr182:
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(this.m_localAnchor2.y);
                              if(_loc21_ || _loc1_)
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(_loc21_)
                                 {
                                    addr201:
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
                                       if(!(_loc22_ && _loc2_))
                                       {
                                          §§push(_loc7_);
                                          if(_loc21_ || _loc2_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc3_.col2);
                                                addr327:
                                                do
                                                {
                                                   §§push(§§pop().x);
                                                }
                                                while(_loc21_);
                                                
                                                addr350:
                                                addr369:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc22_ && _loc2_))
                                                {
                                                   addr368:
                                                   §§push(Number(§§pop()));
                                                }
                                                addr369:
                                                var _loc9_:* = §§pop();
                                                §§push(_loc1_.m_sweep.c.y);
                                                if(_loc21_ || this)
                                                {
                                                   §§push(§§pop() + _loc5_);
                                                   if(!(_loc22_ && _loc1_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(_loc2_.m_sweep.c.x);
                                                if(_loc21_ || _loc1_)
                                                {
                                                   §§push(§§pop() + _loc7_);
                                                   if(_loc21_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc11_:* = §§pop();
                                                §§push(_loc2_.m_sweep.c.y);
                                                addr297:
                                                if(_loc21_)
                                                {
                                                   §§push(§§pop() + _loc8_);
                                                   if(_loc21_)
                                                   {
                                                      addr424:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   §§push(_loc11_);
                                                   if(!_loc22_)
                                                   {
                                                      §§push(§§pop() - _loc9_);
                                                      if(!_loc22_)
                                                      {
                                                         addr433:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      §§push(_loc12_);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() - _loc10_);
                                                         if(!(_loc22_ && _loc3_))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc14_:* = §§pop();
                                                      var _loc15_:b2Vec2 = _loc1_.§7c§(this.§>!@§);
                                                      var _loc16_:b2Vec2 = _loc1_.§@S§;
                                                      var _loc17_:b2Vec2 = _loc2_.§@S§;
                                                      §§push(_loc1_.m_angularVelocity);
                                                      if(!(_loc22_ && _loc2_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc18_:* = §§pop();
                                                      §§push(_loc2_.m_angularVelocity);
                                                      if(_loc21_ || _loc1_)
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
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               §§push(_loc15_.y);
                                                               if(!(_loc22_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(_loc18_);
                                                                           if(!(_loc22_ && _loc3_))
                                                                           {
                                                                              §§goto(addr535);
                                                                           }
                                                                           §§goto(addr648);
                                                                        }
                                                                        §§goto(addr560);
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                                  §§goto(addr567);
                                                               }
                                                               addr535:
                                                               §§push(_loc15_.x);
                                                               if(_loc21_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc21_ || _loc2_)
                                                                     {
                                                                        addr560:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc22_)
                                                                        {
                                                                           addr563:
                                                                           §§push(_loc15_.x);
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr567:
                                                                              §§push(_loc17_.x);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(_loc19_);
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc16_.x);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                   {
                                                                                                      addr613:
                                                                                                      §§push(_loc18_);
                                                                                                      if(!(_loc22_ && _loc3_))
                                                                                                      {
                                                                                                         addr621:
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc21_ || this)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§goto(addr640);
                                                                                                               }
                                                                                                               §§goto(addr659);
                                                                                                            }
                                                                                                            §§goto(addr691);
                                                                                                         }
                                                                                                         §§goto(addr640);
                                                                                                      }
                                                                                                      §§goto(addr676);
                                                                                                   }
                                                                                                   §§goto(addr648);
                                                                                                }
                                                                                                §§goto(addr640);
                                                                                             }
                                                                                             §§goto(addr613);
                                                                                          }
                                                                                          §§goto(addr640);
                                                                                       }
                                                                                       §§goto(addr662);
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                                 §§goto(addr694);
                                                                              }
                                                                              §§goto(addr613);
                                                                           }
                                                                        }
                                                                        §§goto(addr717);
                                                                     }
                                                                     §§goto(addr698);
                                                                  }
                                                                  §§goto(addr648);
                                                               }
                                                               addr640:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_ || _loc3_)
                                                               {
                                                                  addr648:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(_loc15_.y);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(_loc17_.y);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr659:
                                                                           §§push(_loc19_);
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr662:
                                                                              §§push(_loc7_);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc22_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr676:
                                                                                       §§push(_loc16_.y);
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          addr685:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§goto(addr694);
                                                                                          }
                                                                                          addr694:
                                                                                          §§goto(addr688);
                                                                                       }
                                                                                       §§goto(addr691);
                                                                                    }
                                                                                    addr688:
                                                                                    §§goto(addr695);
                                                                                 }
                                                                                 §§goto(addr685);
                                                                              }
                                                                              §§goto(addr691);
                                                                           }
                                                                           §§goto(addr685);
                                                                        }
                                                                        §§goto(addr694);
                                                                     }
                                                                  }
                                                                  §§goto(addr698);
                                                               }
                                                               addr695:
                                                               §§push(_loc18_);
                                                               if(!_loc22_)
                                                               {
                                                                  addr691:
                                                                  §§push(§§pop() * _loc4_);
                                                               }
                                                               §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                               if(!_loc22_)
                                                               {
                                                                  addr698:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     addr717:
                                                                     §§push(Number(§§pop()));
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§goto(addr717);
                                                               }
                                                               var _loc20_:* = §§pop();
                                                               return §§pop();
                                                            }
                                                            §§goto(addr560);
                                                         }
                                                         §§goto(addr567);
                                                      }
                                                      §§goto(addr717);
                                                   }
                                                   §§goto(addr433);
                                                }
                                                §§goto(addr424);
                                                if(_loc22_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                                _loc8_ = §§pop();
                                                do
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc22_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(Number(§§pop()));
                                                   if(!_loc22_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr369);
                                                }
                                                while(_loc7_ = §§pop(), _loc22_ && _loc3_);
                                                
                                                if(!_loc22_)
                                                {
                                                   while(true)
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc1_.m_sweep.c.x);
                                                      if(!_loc22_)
                                                      {
                                                         addr349:
                                                         §§goto(addr350);
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                   addr223:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr342:
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             addr331:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                addr332:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   addr333:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc21_ || this))
                                                      {
                                                         break;
                                                      }
                                                      _loc6_ = §§pop();
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr368);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr349);
                                       }
                                       §§goto(addr350);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr182);
                        }
                        §§push(Number(§§pop()));
                        if(!_loc22_)
                        {
                           _loc5_ = §§pop();
                           if(!_loc22_)
                           {
                              addr155:
                              §§push(_loc6_);
                              if(_loc21_)
                              {
                                 addr158:
                                 §§goto(addr159);
                                 §§push(Number(§§pop()));
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr159);
               }
               §§goto(addr155);
            }
            §§goto(addr94);
         }
         §§goto(addr89);
      }
      
      public function § p§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::#A.SetAwake(true);
            do
            {
               b2internal::2!`.SetAwake(true);
               do
               {
                  this.§?!c§ = param1;
               }
               while(_loc3_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §6-§() : Number
      {
         return this.§;!`§;
      }
      
      public function §41§() : Number
      {
         return this.§6;§;
      }
      
      public function §+!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               while(!_loc4_)
               {
                  this.§;!`§ = param1;
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§6;§ = param2;
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §@7§() : Boolean
      {
         return this.§6!P§;
      }
      
      public function §1!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               while(_loc2_)
               {
                  this.§6!P§ = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §2!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               while(_loc2_)
               {
                  this.§?T§ = param1;
                  if(_loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §^!f§() : Number
      {
         return this.§?T§;
      }
      
      public function §;!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               while(_loc3_ || this)
               {
                  this.§=&§ = param1;
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §08§() : Number
      {
         return this.§=&§;
      }
      
      public function §>v§() : Number
      {
         return this.§!!X§;
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
