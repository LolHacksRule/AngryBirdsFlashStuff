package §+C§
{
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Mat33;
   import §6Z§.b2Math;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import §6Z§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §]!<§:b2Vec2;
      
      private var §^!H§:b2Vec2;
      
      private var §@@§:Number;
      
      private var §"q§:b2Vec2;
      
      private var §"!g§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §#!N§:b2Mat33;
      
      private var §0!F§:b2Vec3;
      
      private var §9q§:Number;
      
      private var §8!9§:Number;
      
      private var §3!<§:Number;
      
      private var §"b§:Number;
      
      private var §[D§:Number;
      
      private var §0!9§:Number;
      
      private var § !§:Boolean;
      
      private var §%O§:Boolean;
      
      private var §%!T§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc2_))
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§]!<§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^!H§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§"q§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§"!g§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§#!N§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§0!F§ = new b2Vec3();
                                 while(true)
                                 {
                                    super(param1);
                                    addr298:
                                    while(!_loc5_)
                                    {
                                       this.m_localAnchor1.SetV(param1.§0O§);
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§ @§);
                                          addr284:
                                          while(!_loc5_)
                                          {
                                             this.§]!<§.SetV(param1.§@`§);
                                             continue loop6;
                                          }
                                          continue loop5;
                                          addr61:
                                          if(_loc6_ || this)
                                          {
                                             return;
                                          }
                                       }
                                    }
                                    continue loop4;
                                    addr210:
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.§8!9§ = 0;
                                       loop20:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                this.§0!F§.§5!H§();
                                             }
                                             addr228:
                                          }
                                          while(true)
                                          {
                                             this.§9q§ = 0;
                                             loop19:
                                             while(!_loc5_)
                                             {
                                                §§goto(addr210);
                                                loop23:
                                                while(true)
                                                {
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop19;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      this.§0!9§ = param1.motorSpeed;
                                                      loop24:
                                                      while(_loc6_)
                                                      {
                                                         this.§ !§ = param1.§+!<§;
                                                         continue loop23;
                                                         addr91:
                                                         if(_loc5_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         this.§"q§.§5!H§();
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr75:
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop23;
                                                            }
                                                            loop27:
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr91);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        this.§%!T§ = b2internal::-!Z;
                                                                        continue loop27;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^!H§);
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(this.§]!<§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr238:
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           addr247:
                                                                           while(true)
                                                                           {
                                                                              this.§@@§ = param1.§<!b§;
                                                                              §§goto(addr228);
                                                                           }
                                                                           addr247:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                        }
                                                                        addr253:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop15;
                                                                        §§goto(addr238);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr253);
                                                                     §§goto(addr263);
                                                                  }
                                                                  addr263:
                                                                  addr104:
                                                                  addr251:
                                                               }
                                                            }
                                                            continue loop24;
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§goto(addr247);
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr298);
                                          }
                                          addr163:
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                continue loop2;
                                             }
                                             continue loop20;
                                             §§goto(addr54);
                                          }
                                          continue loop2;
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
         §§goto(addr247);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§0!F§.x);
            if(!_loc3_)
            {
               §§push(this.§"!g§.x);
               if(_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§8!9§);
                     if(!_loc3_)
                     {
                        §§push(this.§0!F§.z);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this.§"q§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr87:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                       }
                                       §§goto(addr136);
                                    }
                                    §§push(this.§0!F§.x);
                                    if(!_loc3_)
                                    {
                                       addr95:
                                       §§push(this.§"!g§.y);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr105:
                                          §§push(§§pop() * §§pop());
                                          if(_loc2_)
                                          {
                                             addr108:
                                             §§push(this.§8!9§);
                                             if(_loc2_)
                                             {
                                                addr112:
                                                §§push(this.§0!F§.z);
                                                if(_loc2_)
                                                {
                                                   addr135:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§"q§.y);
                                                   }
                                                   addr136:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() * (§§pop() + §§pop()));
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr108);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr136);
               }
               §§goto(addr135);
            }
            §§goto(addr136);
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§0!F§.y;
         }
      }
      
      public function §#0§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(_loc10_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_ || _loc1_)
            {
               addr82:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§3!D§(this.§]!<§)).x);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc8_.y);
                     if(!(_loc11_ && this))
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_)
                        {
                           addr113:
                           §§push(§§pop() + §§pop());
                           if(_loc10_ || this)
                           {
                              addr132:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr132);
                        }
                        var _loc9_:* = §§pop();
                        return §§pop();
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr132);
               }
               §§goto(addr113);
            }
            §§goto(addr132);
         }
         §§goto(addr82);
      }
      
      public function §="'§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::[Z;
         var _loc2_:b2Body = b2internal::8!F;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(!(_loc22_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(!(_loc22_ && _loc3_))
         {
            §§push(_loc4_);
            if(!_loc22_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc22_ && _loc1_))
               {
                  §§push(_loc3_.col2.x);
                  if(!_loc22_)
                  {
                     addr91:
                     §§push(§§pop() + §§pop() * _loc5_);
                     if(_loc21_ || this)
                     {
                        addr99:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr91);
               }
               var _loc6_:* = §§pop();
               if(!(_loc22_ && _loc3_))
               {
                  §§push(_loc3_.col1.y);
                  if(!_loc22_)
                  {
                     §§push(_loc4_);
                     if(!(_loc22_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc21_)
                        {
                           addr124:
                           §§push(_loc3_.col2.y);
                           if(_loc21_ || this)
                           {
                              addr136:
                              §§push(§§pop() + §§pop() * _loc5_);
                              if(!_loc22_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc21_ || _loc1_)
                                 {
                                    _loc5_ = §§pop();
                                    addr155:
                                    if(!_loc22_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc22_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(_loc21_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(_loc21_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc21_ || _loc3_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(_loc21_ || _loc3_)
                                       {
                                          addr201:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc22_)
                                       {
                                          §§push(_loc3_.col1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc21_ || this)
                                             {
                                                §§push(_loc7_);
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc22_ && _loc1_))
                                                   {
                                                      §§push(_loc3_.col2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr347:
                                                         addr275:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            addr348:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr359:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr360:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§push(_loc3_.col2);
                                                         if(!(_loc21_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(!(_loc22_ && this))
                                                         {
                                                            if(_loc21_ || _loc1_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc21_ || _loc1_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc22_)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc21_ || _loc1_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc22_)
                                                                           {
                                                                              addr323:
                                                                              _loc8_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(!(_loc22_ && this))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc21_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    addr379:
                                                                                    var _loc9_:* = §§pop();
                                                                                    §§push(_loc1_.m_sweep.c.y);
                                                                                    if(_loc21_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(_loc21_ || _loc3_)
                                                                                       {
                                                                                          addr400:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc10_:* = §§pop();
                                                                                       §§push(_loc2_.m_sweep.c.x);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc7_);
                                                                                          if(!(_loc22_ && this))
                                                                                          {
                                                                                             addr417:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc11_:* = §§pop();
                                                                                          §§push(_loc2_.m_sweep.c.y);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc8_);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                addr429:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc12_:* = §§pop();
                                                                                             §§push(_loc11_);
                                                                                             if(!(_loc22_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop() - _loc9_);
                                                                                                if(!(_loc22_ && _loc1_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc13_:* = §§pop();
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc22_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() - _loc10_);
                                                                                                if(_loc21_ || _loc1_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             var _loc15_:b2Vec2 = _loc1_.§3!D§(this.§]!<§);
                                                                                             var _loc16_:b2Vec2 = _loc1_.§?!^§;
                                                                                             var _loc17_:b2Vec2 = _loc2_.§?!^§;
                                                                                             §§push(_loc1_.m_angularVelocity);
                                                                                             if(!(_loc22_ && _loc1_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc18_:* = §§pop();
                                                                                             §§push(_loc2_.m_angularVelocity);
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc19_:* = §§pop();
                                                                                             §§push(_loc13_);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(_loc18_);
                                                                                                if(_loc21_ || _loc1_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc15_.y);
                                                                                                      if(!(_loc22_ && _loc1_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc22_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr550:
                                                                                                                     §§push(_loc15_.x);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc21_ || _loc1_)
                                                                                                                              {
                                                                                                                                 addr573:
                                                                                                                                 §§push(_loc15_.x);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr577:
                                                                                                                                    §§push(_loc17_.x);
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       addr581:
                                                                                                                                       §§push(_loc19_);
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(_loc21_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc16_.x);
                                                                                                                                                      if(_loc21_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               addr616:
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  addr619:
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr628:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc22_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr636:
                                                                                                                                                                              §§push(_loc15_.y);
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr640:
                                                                                                                                                                                 §§push(_loc17_.y);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr644:
                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                    if(!(_loc22_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr652:
                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc22_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc16_.y);
                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr670:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr678:
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr689:
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr708:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                            return Number(§§pop());
                                                                                                                                                                                                            addr712:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr712);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr713);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr689);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr713);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr689);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr678);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr670);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr678);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr640);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr678);
                                                                                                                                                }
                                                                                                                                                §§goto(addr644);
                                                                                                                                             }
                                                                                                                                             §§goto(addr652);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    §§goto(addr628);
                                                                                                                                 }
                                                                                                                                 §§goto(addr708);
                                                                                                                              }
                                                                                                                              §§goto(addr713);
                                                                                                                           }
                                                                                                                           §§goto(addr636);
                                                                                                                        }
                                                                                                                        §§goto(addr581);
                                                                                                                     }
                                                                                                                     §§goto(addr619);
                                                                                                                  }
                                                                                                                  §§goto(addr628);
                                                                                                               }
                                                                                                               §§goto(addr577);
                                                                                                            }
                                                                                                            §§goto(addr713);
                                                                                                         }
                                                                                                         §§goto(addr636);
                                                                                                      }
                                                                                                      §§goto(addr550);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr577);
                                                                                             }
                                                                                             §§goto(addr573);
                                                                                          }
                                                                                          §§goto(addr429);
                                                                                       }
                                                                                       §§goto(addr417);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc7_ = §§pop();
                                                                                 if(!(_loc21_ || this))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_.col1);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                if(_loc21_ || _loc2_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc21_ || _loc1_)
                                                                                                   {
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr237:
                                                                                       }
                                                                                       §§push(_loc1_.m_sweep.c.x);
                                                                                       if(!(_loc22_ && _loc3_))
                                                                                       {
                                                                                          addr375:
                                                                                          §§push(§§pop() + _loc4_);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr375);
                                                                                    }
                                                                                    §§goto(addr379);
                                                                                    §§push(Number(§§pop()));
                                                                                    addr235:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr237);
                                                                                 }
                                                                                 §§goto(addr375);
                                                                                 addr362:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 §§goto(addr362);
                                                                              }
                                                                              addr361:
                                                                           }
                                                                           §§goto(addr375);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr359);
                                                                     }
                                                                  }
                                                                  §§goto(addr375);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr348);
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr361);
                                          }
                                       }
                                       §§goto(addr235);
                                    }
                                    §§goto(addr201);
                                 }
                              }
                           }
                           §§goto(addr136);
                        }
                        _loc4_ = §§pop();
                        §§goto(addr155);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr124);
               }
               §§goto(addr155);
            }
            §§goto(addr91);
         }
         §§goto(addr99);
      }
      
      public function §!!B§() : Boolean
      {
         return this.§ !§;
      }
      
      public function §2!4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               while(_loc3_ || _loc3_)
               {
                  this.§ !§ = param1;
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr50:
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §]!7§() : Number
      {
         return this.§3!<§;
      }
      
      public function §%!Z§() : Number
      {
         return this.§"b§;
      }
      
      public function §;1§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               while(_loc4_)
               {
                  while(_loc4_ || this)
                  {
                     this.§"b§ = param2;
                     if(_loc4_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§3!<§ = param1;
            §§goto(addr45);
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%O§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::[Z.SetAwake(true);
            do
            {
               b2internal::8!F.SetAwake(true);
               do
               {
                  this.§%O§ = param1;
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §"!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::[Z.SetAwake(true);
         }
         while(true)
         {
            b2internal::8!F.SetAwake(true);
            while(!(_loc3_ && _loc3_))
            {
               this.§0!9§ = param1;
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §7"%§() : Number
      {
         return this.§0!9§;
      }
      
      public function §5!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::[Z.SetAwake(true);
            while(true)
            {
               b2internal::8!F.SetAwake(true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§[D§ = param1;
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
         §§goto(addr57);
      }
      
      public function §3""§() : Number
      {
         return this.§8!9§;
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
