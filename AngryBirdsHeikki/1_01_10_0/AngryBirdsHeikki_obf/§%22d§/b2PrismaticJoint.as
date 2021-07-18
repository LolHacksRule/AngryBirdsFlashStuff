package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Mat33;
   import §6A§.b2Math;
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §6A§.b2Vec3;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §>!@§:b2Vec2;
      
      private var §%u§:b2Vec2;
      
      private var §=A§:Number;
      
      private var §0G§:b2Vec2;
      
      private var §9N§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,W§:b2Mat33;
      
      private var §12§:b2Vec3;
      
      private var §!b§:Number;
      
      private var §!!X§:Number;
      
      private var §;!`§:Number;
      
      private var §6;§:Number;
      
      private var §=&§:Number;
      
      private var §?T§:Number;
      
      private var §?!c§:Boolean;
      
      private var §6!P§:Boolean;
      
      private var §"B§:int;
      
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
                  this.§>!@§ = new b2Vec2();
                  while(true)
                  {
                     this.§%u§ = new b2Vec2();
                     while(true)
                     {
                        this.§0G§ = new b2Vec2();
                        continue loop1;
                        addr43:
                        if(_loc5_ || this)
                        {
                           return;
                        }
                     }
                     addr297:
                     if(_loc5_ || param1)
                     {
                        this.§12§ = new b2Vec3();
                        loop7:
                        for(; _loc5_; if(_loc6_ && param1)
                        {
                           continue;
                        },this.§!b§ = 0,§§goto(addr159))
                        {
                           super(param1);
                           loop8:
                           while(true)
                           {
                              this.m_localAnchor1.SetV(param1.§@b§);
                              loop9:
                              while(true)
                              {
                                 this.m_localAnchor2.SetV(param1.§=i§);
                                 loop10:
                                 while(!_loc6_)
                                 {
                                    this.§>!@§.SetV(param1.§^>§);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(this.§%u§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§>!@§);
                                          addr238:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§push(-§§pop());
                                             }
                                             addr247:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                §§push(§§pop().x);
                                                addr223:
                                                continue loop12;
                                                if(!(_loc5_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§pop().y = §§pop();
                                                loop16:
                                                while(true)
                                                {
                                                   this.§=A§ = param1.§;w§;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      this.§12§.§^!,§();
                                                      while(true)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop12;
                                                         loop21:
                                                         while(!(_loc6_ && this))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            this.§6;§ = param1.§[g§;
                                                            loop22:
                                                            while(true)
                                                            {
                                                               this.§=&§ = param1.include;
                                                               loop23:
                                                               while(_loc5_)
                                                               {
                                                                  addr121:
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     this.§?T§ = param1.motorSpeed;
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           this.§?!c§ = param1.§3L§;
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§6!P§ = param1.§;`§;
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 this.§"B§ = b2internal::7t;
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       this.§0G§.§^!,§();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                          continue loop27;
                                                                                          addr73:
                                                                                          this.§9N§.§^!,§();
                                                                                          if(!(_loc5_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr43);
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop23;
                                                                        if(_loc6_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr73);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§;!`§ = param1.§<T§;
                                                                        break loop23;
                                                                     }
                                                                     addr154:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§,W§ = new b2Mat33();
                                                                        break loop7;
                                                                        §§goto(addr121);
                                                                     }
                                                                     addr310:
                                                                  }
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
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
                        while(_loc5_ || param1)
                        {
                           §§goto(addr297);
                        }
                        continue loop1;
                        addr290:
                     }
                  }
               }
            }
         }
         §§goto(addr255);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§12§.x);
            if(!_loc3_)
            {
               §§push(this.§9N§.x);
               if(_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§!!X§);
                     if(!(_loc3_ && this))
                     {
                        addr42:
                        §§push(this.§12§.z);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || this)
                           {
                              §§push(this.§0G§.x);
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || this)
                                 {
                                    §§goto(addr83);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr130);
                           }
                           addr83:
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              addr87:
                              §§push(§§pop() * §§pop());
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 §§push(this.§12§.x);
                                 if(_loc2_)
                                 {
                                    addr95:
                                    §§push(this.§9N§.y);
                                    if(!_loc3_)
                                    {
                                       addr100:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§push(this.§!!X§);
                                          if(!_loc3_)
                                          {
                                             §§push(this.§12§.z);
                                             if(_loc2_)
                                             {
                                                §§goto(addr135);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr135);
               }
               §§goto(addr42);
            }
            addr135:
            §§push(§§pop() + §§pop());
            if(_loc2_ || _loc3_)
            {
               addr130:
               §§push(this.§0G§.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc3_)
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
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc2_))
            {
               addr51:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc11_ && _loc1_))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc11_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§7c§(this.§>!@§)).x);
            if(_loc10_ || _loc1_)
            {
               §§push(_loc6_);
               if(_loc10_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && _loc2_))
                  {
                     §§push(_loc8_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(!_loc11_)
                        {
                           addr133:
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
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
               §§goto(addr133);
            }
            §§goto(addr137);
         }
         §§goto(addr51);
      }
      
      public function §?!D§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::#A;
         var _loc2_:b2Body = b2internal::2!`;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_ || this)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc22_ || _loc1_)
            {
               §§push(_loc4_);
               if(!(_loc21_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc22_ || _loc2_)
                  {
                     addr90:
                     §§push(_loc3_.col2.x);
                     if(!_loc21_)
                     {
                        addr95:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc22_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc21_)
                     {
                        §§push(_loc4_);
                        if(!_loc21_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc21_)
                           {
                              §§push(_loc3_.col2.y);
                              if(!(_loc21_ && _loc2_))
                              {
                                 addr130:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc22_)
                              {
                                 addr135:
                                 §§push(Number(§§pop()));
                                 if(_loc22_ || _loc1_)
                                 {
                                    addr143:
                                    _loc5_ = §§pop();
                                    addr161:
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       §§push(_loc6_);
                                       if(_loc22_ || _loc1_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(!(_loc21_ && this))
                                       {
                                          addr188:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!(_loc21_ && _loc2_))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(_loc22_ || this)
                                          {
                                             addr212:
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
                                                if(!(_loc21_ && _loc1_))
                                                {
                                                   §§push(_loc7_);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr333:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr335:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr336:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr337:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr338:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        addr343:
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
                                                   }
                                                   addr332:
                                                }
                                                addr365:
                                                §§push(§§pop() + _loc4_);
                                                addr370:
                                                if(!_loc21_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(_loc1_.m_sweep.c.y);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() + _loc5_);
                                                   if(!(_loc21_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc10_:* = §§pop();
                                                §§push(_loc2_.m_sweep.c.x);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() + _loc7_);
                                                   if(_loc22_ || _loc2_)
                                                   {
                                                      addr403:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(_loc2_.m_sweep.c.y);
                                                   if(_loc22_)
                                                   {
                                                      §§push(§§pop() + _loc8_);
                                                      if(!_loc21_)
                                                      {
                                                         addr415:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc11_);
                                                      if(_loc22_ || this)
                                                      {
                                                         §§push(§§pop() - _loc9_);
                                                         if(_loc22_ || this)
                                                         {
                                                            addr434:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc13_:* = §§pop();
                                                         §§push(_loc12_);
                                                         if(_loc22_ || _loc1_)
                                                         {
                                                            §§push(§§pop() - _loc10_);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc14_:* = §§pop();
                                                         var _loc15_:b2Vec2 = _loc1_.§7c§(this.§>!@§);
                                                         var _loc16_:b2Vec2 = _loc1_.§@S§;
                                                         var _loc17_:b2Vec2 = _loc2_.§@S§;
                                                         §§push(_loc1_.m_angularVelocity);
                                                         if(_loc22_ || _loc1_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc18_:* = §§pop();
                                                         §§push(_loc2_.m_angularVelocity);
                                                         if(_loc22_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc19_:* = §§pop();
                                                         §§push(_loc13_);
                                                         if(!(_loc21_ && _loc2_))
                                                         {
                                                            §§push(_loc18_);
                                                            if(_loc22_ || _loc3_)
                                                            {
                                                               §§push(-§§pop());
                                                               if(!(_loc21_ && this))
                                                               {
                                                                  §§push(_loc15_.y);
                                                                  if(!(_loc21_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc21_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc22_)
                                                                        {
                                                                           §§goto(addr520);
                                                                        }
                                                                        §§goto(addr722);
                                                                     }
                                                                     §§goto(addr556);
                                                                  }
                                                                  §§goto(addr572);
                                                               }
                                                               §§goto(addr568);
                                                            }
                                                            §§goto(addr528);
                                                         }
                                                         addr520:
                                                         §§push(_loc14_);
                                                         if(!(_loc21_ && _loc2_))
                                                         {
                                                            addr528:
                                                            §§push(_loc18_);
                                                            if(!(_loc21_ && _loc3_))
                                                            {
                                                               §§push(_loc15_.x);
                                                               if(!(_loc21_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc22_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc21_ && this))
                                                                     {
                                                                        addr556:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc22_ || _loc2_)
                                                                        {
                                                                           §§push(_loc15_.x);
                                                                           if(!_loc21_)
                                                                           {
                                                                              addr568:
                                                                              §§push(_loc17_.x);
                                                                              if(_loc22_)
                                                                              {
                                                                                 addr572:
                                                                                 §§push(_loc19_);
                                                                                 if(_loc22_ || _loc1_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             addr594:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(_loc16_.x);
                                                                                                if(!(_loc21_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                   {
                                                                                                      addr614:
                                                                                                      §§push(_loc18_);
                                                                                                      if(_loc22_ || this)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            addr625:
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc22_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  addr631:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§goto(addr634);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr684);
                                                                                                   }
                                                                                                   §§goto(addr634);
                                                                                                }
                                                                                                §§goto(addr631);
                                                                                             }
                                                                                             §§goto(addr614);
                                                                                          }
                                                                                          §§goto(addr684);
                                                                                       }
                                                                                       §§goto(addr658);
                                                                                    }
                                                                                    §§goto(addr625);
                                                                                 }
                                                                                 §§goto(addr677);
                                                                              }
                                                                              addr634:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(_loc15_.y);
                                                                                 if(!(_loc21_ && _loc2_))
                                                                                 {
                                                                                    addr646:
                                                                                    §§push(_loc17_.y);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(_loc19_);
                                                                                       if(!(_loc21_ && _loc3_))
                                                                                       {
                                                                                          addr658:
                                                                                          §§push(_loc7_);
                                                                                          if(_loc22_ || _loc1_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc22_ || _loc1_)
                                                                                                {
                                                                                                   addr677:
                                                                                                   §§push(_loc16_.y);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§goto(addr681);
                                                                                                   }
                                                                                                   §§push(_loc4_);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr684);
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       addr681:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          addr684:
                                                                                          §§push(_loc18_);
                                                                                          if(_loc22_ || _loc3_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr695);
                                                                                       }
                                                                                       addr695:
                                                                                       §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                       if(_loc22_ || _loc3_)
                                                                                       {
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr684);
                                                                              }
                                                                           }
                                                                           §§goto(addr724);
                                                                        }
                                                                        §§goto(addr722);
                                                                     }
                                                                     §§goto(addr724);
                                                                  }
                                                                  §§goto(addr684);
                                                               }
                                                               §§goto(addr594);
                                                            }
                                                            §§goto(addr646);
                                                         }
                                                         addr724:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc21_ && _loc3_))
                                                         {
                                                            addr722:
                                                            return Number(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr403);
                                             }
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr188);
                                 }
                              }
                              _loc4_ = §§pop();
                              §§goto(addr161);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr130);
                     }
                  }
                  §§goto(addr143);
               }
               §§goto(addr95);
            }
            §§goto(addr90);
         }
         §§goto(addr48);
      }
      
      public function § p§() : Boolean
      {
         return this.§?!c§;
      }
      
      public function §3<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               loop1:
               while(_loc2_ || param1)
               {
                  while(true)
                  {
                     this.§?!c§ = param1;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::#A.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               while(true)
               {
                  this.§;!`§ = param1;
                  while(_loc4_ || param1)
                  {
                     if(!_loc3_)
                     {
                        this.§6;§ = param2;
                        if(_loc4_)
                        {
                           return;
                           addr40:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §@7§() : Boolean
      {
         return this.§6!P§;
      }
      
      public function §1!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::#A.SetAwake(true);
            while(true)
            {
               b2internal::2!`.SetAwake(true);
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§6!P§ = param1;
            if(_loc2_)
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §2!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::#A.SetAwake(true);
         }
         while(true)
         {
            b2internal::2!`.SetAwake(true);
            while(_loc2_ || this)
            {
               this.§?T§ = param1;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §^!f§() : Number
      {
         return this.§?T§;
      }
      
      public function §;!e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::#A.SetAwake(true);
         }
         do
         {
            b2internal::2!`.SetAwake(true);
            do
            {
               this.§=&§ = param1;
            }
            while(_loc3_ && _loc2_);
            
         }
         while(!(_loc2_ || _loc3_));
         
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
