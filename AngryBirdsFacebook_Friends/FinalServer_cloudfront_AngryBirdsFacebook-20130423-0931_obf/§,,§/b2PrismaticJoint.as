package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Mat33;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import §6!^§.b2Vec3;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §2!L§:b2Vec2;
      
      private var §'_§:b2Vec2;
      
      private var §`"X§:Number;
      
      private var §1!?§:b2Vec2;
      
      private var §@!L§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §9!S§:b2Mat33;
      
      private var §2!_§:b2Vec3;
      
      private var §!K§:Number;
      
      private var §3!1§:Number;
      
      private var §4"'§:Number;
      
      private var §1!K§:Number;
      
      private var § !I§:Number;
      
      private var §+"$§:Number;
      
      private var §9!=§:Boolean;
      
      private var §3!A§:Boolean;
      
      private var §@!3§:int;
      
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
               while(true)
               {
                  this.§2!L§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§'_§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§1!?§ = new b2Vec2();
                        while(true)
                        {
                           this.§@!L§ = new b2Vec2();
                           loop5:
                           while(_loc6_)
                           {
                              this.§9!S§ = new b2Mat33();
                              loop6:
                              while(_loc6_)
                              {
                                 this.§2!_§ = new b2Vec3();
                                 loop7:
                                 while(true)
                                 {
                                    super(param1);
                                    loop8:
                                    while(_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       this.m_localAnchor1.SetV(param1.§-!,§);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§["9§);
                                          loop10:
                                          while(true)
                                          {
                                             this.§2!L§.SetV(param1.§""'§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§'_§);
                                                while(true)
                                                {
                                                   §§push(this.§2!L§);
                                                   addr246:
                                                   addr256:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      addr247:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop());
                                                         addr248:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§push(this.§'_§);
                                                   if(!(_loc6_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(this.§2!L§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            while(true)
                                                            {
                                                               this.§`"X§ = param1.§1b§;
                                                               addr209:
                                                               loop23:
                                                               while(!(_loc5_ && this))
                                                               {
                                                                  this.§1!K§ = param1.§3!t§;
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§ !I§ = param1.§%!7§;
                                                                        continue loop2;
                                                                     }
                                                                     addr175:
                                                                     while(!_loc5_)
                                                                     {
                                                                        this.§4"'§ = param1.§9V§;
                                                                        addr67:
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        this.§@!L§.§%y§();
                                                                        addr74:
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§goto(addr67);
                                                                              §§goto(addr74);
                                                                           }
                                                                           continue loop23;
                                                                           addr65:
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           addr49:
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop7;
                                                                                    addr110:
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.§3!A§ = param1.§<!0§;
                                                                                 while(_loc6_)
                                                                                 {
                                                                                    this.§@!3§ = b2internal::>Q;
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr209);
                                                                                 §§goto(addr49);
                                                                              }
                                                                              continue loop6;
                                                                              addr100:
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 return;
                                                                                 addr60:
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr143);
                                                                           }
                                                                        }
                                                                        §§goto(addr92);
                                                                        continue loop23;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§2!_§.§%y§();
                                                                  addr203:
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     this.§!K§ = 0;
                                                                     addr182:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr247);
                                                         }
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr246);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§3!1§ = 0;
            §§goto(addr175);
         }
         §§goto(addr60);
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
         if(!_loc2_)
         {
            §§push(this.§2!_§.x);
            if(_loc3_ || param1)
            {
               §§push(this.§@!L§.x);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§3!1§);
                     if(!_loc2_)
                     {
                        §§push(this.§2!_§.z);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              §§push(this.§1!?§.x);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       addr98:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_ || this)
                                       {
                                          addr106:
                                          §§push(this.§2!_§.x);
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr116:
                                             §§push(this.§@!L§.y);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc2_ && this))
                                                {
                                                   addr129:
                                                   §§push(this.§3!1§);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr148:
                                                      §§push(this.§2!_§.z);
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         §§goto(addr170);
                                                      }
                                                      addr170:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_ || this)
                                                      {
                                                         addr166:
                                                         §§push(this.§1!?§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr106);
               }
               §§goto(addr129);
            }
            §§goto(addr170);
         }
         §§goto(addr98);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§2!_§.y;
         }
      }
      
      public function §-"<§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc10_ && _loc1_))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(_loc11_)
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc10_ && _loc2_))
            {
               addr78:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§^"C§(this.§2!L§)).x);
            if(!_loc10_)
            {
               §§push(_loc6_);
               if(!(_loc10_ && _loc1_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc10_ && this))
                  {
                     §§goto(addr116);
                  }
                  §§goto(addr133);
               }
               §§goto(addr129);
            }
            addr116:
            §§push(_loc8_.y);
            if(!_loc10_)
            {
               §§push(§§pop() * _loc7_);
               if(!(_loc10_ && this))
               {
                  addr129:
                  §§push(§§pop() + §§pop());
                  if(_loc11_)
                  {
                     addr133:
                     §§push(Number(§§pop()));
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr133);
               }
            }
            var _loc9_:* = §§pop();
            return §§pop();
         }
         §§goto(addr78);
      }
      
      public function §[Y§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"X;
         var _loc2_:b2Body = b2internal::5!;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc22_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc21_ || this)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_ || _loc2_)
            {
               addr71:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc22_ && _loc3_))
            {
               §§push(_loc4_);
               if(_loc21_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc22_ && this))
                     {
                        addr104:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc22_ && _loc2_))
                     {
                        addr114:
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     if(_loc21_ || this)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc21_ || this)
                        {
                           §§push(_loc4_);
                           if(_loc21_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc22_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc22_ && this))
                                 {
                                    addr149:
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc21_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc21_ || this)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc21_)
                                       {
                                          addr165:
                                          §§push(_loc6_);
                                          if(!(_loc22_ && _loc3_))
                                          {
                                             addr174:
                                             _loc4_ = Number(§§pop());
                                          }
                                          §§goto(addr174);
                                       }
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(!(_loc22_ && _loc1_))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(_loc21_)
                                          {
                                             addr197:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc7_:* = §§pop();
                                          §§push(this.m_localAnchor2.y);
                                          if(_loc21_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                             if(!_loc22_)
                                             {
                                                addr211:
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
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!_loc22_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            addr319:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                            }
                                                            addr227:
                                                            if(_loc22_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc21_)
                                                            {
                                                               addr237:
                                                               if(!(_loc22_ && _loc1_))
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  if(!_loc22_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.col1);
                                                                           if(_loc22_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           if(!_loc22_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 if(!(_loc22_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       addr275:
                                                                                       §§push(_loc3_.col2);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(_loc21_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   addr298:
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop10:
                                                                                                         for(; !_loc22_; §§goto(addr237))
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            loop11:
                                                                                                            while(!_loc22_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  }
                                                                                                                  if(!(_loc21_ || this))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr344:
                                                                                                                     §§push(_loc4_);
                                                                                                                     break loop9;
                                                                                                                     addr323:
                                                                                                                  }
                                                                                                                  §§goto(addr227);
                                                                                                               }
                                                                                                               var _loc9_:* = §§pop();
                                                                                                               §§push(_loc1_.m_sweep.c.y);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc5_);
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               var _loc10_:* = §§pop();
                                                                                                               §§push(_loc2_.m_sweep.c.x);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc7_);
                                                                                                                  if(_loc21_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr392:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc11_:* = §§pop();
                                                                                                                  §§push(_loc2_.m_sweep.c.y);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc8_);
                                                                                                                     if(!(_loc22_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        addr423:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!(_loc22_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc10_);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           addr437:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc14_:* = §§pop();
                                                                                                                        var _loc15_:b2Vec2 = _loc1_.§^"C§(this.§2!L§);
                                                                                                                        var _loc16_:b2Vec2 = _loc1_.§"!_§;
                                                                                                                        var _loc17_:b2Vec2 = _loc2_.§"!_§;
                                                                                                                        §§push(_loc1_.m_angularVelocity);
                                                                                                                        if(_loc21_)
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
                                                                                                                        if(!(_loc22_ && _loc1_))
                                                                                                                        {
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!(_loc22_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc15_.y);
                                                                                                                                 if(_loc21_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             addr507:
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_.x);
                                                                                                                                                if(_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc22_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc22_)
                                                                                                                                                      {
                                                                                                                                                         addr525:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr528:
                                                                                                                                                            §§push(_loc15_.x);
                                                                                                                                                            if(_loc21_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr537:
                                                                                                                                                               §§push(_loc17_.x);
                                                                                                                                                               if(_loc21_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr546:
                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr566:
                                                                                                                                                                                 §§push(_loc16_.x);
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr570:
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr610:
                                                                                                                                                                                    §§push(_loc17_.y);
                                                                                                                                                                                    if(!(_loc22_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr619:
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       if(_loc21_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr633:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr636:
                                                                                                                                                                                                   §§push(_loc16_.y);
                                                                                                                                                                                                   if(_loc21_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr655:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr658:
                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                         if(_loc21_ || _loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr669:
                                                                                                                                                                                                         §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                         if(!_loc22_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr673:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr678:
                                                                                                                                                                                                               return Number(§§pop());
                                                                                                                                                                                                               addr677:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr677);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr678);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr669);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr667:
                                                                                                                                                                                                   §§goto(addr669);
                                                                                                                                                                                                   §§push(§§pop() * _loc4_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr669);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr655);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr667);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr669);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr658);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr619);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(_loc21_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                                 if(!_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc21_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(!_loc22_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr601:
                                                                                                                                                                                                §§push(_loc15_.y);
                                                                                                                                                                                                if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr610);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr658);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr673);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr610);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr619);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr658);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr619);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr658);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr636);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr633);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr619);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr658);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr610);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr673);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr678);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr537);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr610);
                                                                                                                                                }
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             §§goto(addr546);
                                                                                                                                          }
                                                                                                                                          §§goto(addr601);
                                                                                                                                       }
                                                                                                                                       §§goto(addr528);
                                                                                                                                    }
                                                                                                                                    §§goto(addr507);
                                                                                                                                 }
                                                                                                                                 §§goto(addr566);
                                                                                                                              }
                                                                                                                              §§goto(addr525);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr678);
                                                                                                                     }
                                                                                                                     §§goto(addr437);
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                               §§goto(addr392);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop1;
                                                                                                         addr304:
                                                                                                      }
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr320:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr321:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr322:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr320:
                                                                                                   }
                                                                                                   §§goto(addr323);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr321);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    §§goto(addr344);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr275);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc22_ && _loc1_))
                                                                        {
                                                                           §§goto(addr354);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                     §§push(_loc1_.m_sweep.c.x);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§goto(addr344);
                                                                     }
                                                                     §§goto(addr354);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                }
                                             }
                                             §§goto(addr309);
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr114);
               }
               §§goto(addr104);
            }
            §§goto(addr114);
         }
         §§goto(addr71);
      }
      
      public function §6m§() : Boolean
      {
         return this.§9!=§;
      }
      
      public function §[g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::3"X.SetAwake(true);
         }
         while(true)
         {
            b2internal::5!.SetAwake(true);
            while(!(_loc3_ && _loc2_))
            {
               this.§9!=§ = param1;
               if(!_loc3_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            b2internal::3"X.SetAwake(true);
            while(true)
            {
               b2internal::5!.SetAwake(true);
               loop1:
               while(!_loc4_)
               {
                  this.§4"'§ = param1;
                  while(true)
                  {
                     this.§1!K§ = param2;
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §-"0§() : Boolean
      {
         return this.§3!A§;
      }
      
      public function §1![§(param1:Boolean) : void
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
                  this.§3!A§ = param1;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::3"X.SetAwake(true);
            do
            {
               b2internal::5!.SetAwake(true);
               do
               {
                  this.§+"$§ = param1;
               }
               while(_loc2_ && _loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §+"E§() : Number
      {
         return this.§+"$§;
      }
      
      public function §&!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::3"X.SetAwake(true);
            while(true)
            {
               b2internal::5!.SetAwake(true);
               loop1:
               while(_loc2_ || _loc2_)
               {
                  while(true)
                  {
                     this.§ !I§ = param1;
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
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
