package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!-§:b2Vec2;
      
      private var §#g§:b2Vec2;
      
      private var §@_§:b2Vec2;
      
      private var §8!"§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!3§:b2Mat22;
      
      private var §;D§:b2Vec2;
      
      private var § !J§:Number;
      
      private var §4k§:Number;
      
      private var §%!I§:Number;
      
      private var §^!b§:Number;
      
      private var §&U§:Number;
      
      private var §2"§:Number;
      
      private var §3!§:Boolean;
      
      private var §8!_§:Boolean;
      
      private var §!!I§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            this.m_localAnchor1 = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            while(true)
            {
               this.§!-§ = new b2Vec2();
               loop2:
               while(true)
               {
                  this.§#g§ = new b2Vec2();
                  loop3:
                  while(true)
                  {
                     this.§@_§ = new b2Vec2();
                     loop4:
                     while(true)
                     {
                        this.§8!"§ = new b2Vec2();
                        loop5:
                        while(true)
                        {
                           this.§^!3§ = new b2Mat22();
                           loop6:
                           while(true)
                           {
                              this.§;D§ = new b2Vec2();
                              loop7:
                              while(true)
                              {
                                 super(param1);
                                 loop8:
                                 while(true)
                                 {
                                    this.m_localAnchor1.SetV(param1.§>!g§);
                                    loop9:
                                    while(true)
                                    {
                                       this.m_localAnchor2.SetV(param1.§&1§);
                                       loop10:
                                       while(_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop6;
                                          }
                                          this.§!-§.SetV(param1.§0?§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§#g§);
                                             while(true)
                                             {
                                                §§push(this.§!-§);
                                                addr232:
                                                addr249:
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   addr233:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                      addr234:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                §§push(this.§#g§);
                                                if(_loc5_)
                                                {
                                                   continue;
                                                }
                                                §§push(this.§!-§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            this.§;D§.§@!;§();
                                                            addr205:
                                                            while(true)
                                                            {
                                                               this.§ !J§ = 0;
                                                               continue loop0;
                                                            }
                                                            addr87:
                                                            if(_loc5_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            this.§@_§.§@!;§();
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr63:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  addr121:
                                                                  loop25:
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     this.§8!_§ = param1.§ in§;
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr106:
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break;
                                                                                 addr78:
                                                                              }
                                                                              this.§!!I§ = §5!§;
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop26;
                                                                                 }
                                                                                 addr80:
                                                                                 if(_loc5_ && _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§goto(addr80);
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr140:
                                                                                 }
                                                                                 §§goto(addr87);
                                                                                 continue loop28;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           addr187:
                                                                           while(_loc6_ || _loc3_)
                                                                           {
                                                                              this.§^!b§ = param1.§@!f§;
                                                                              §§goto(addr106);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§%!I§ = param1.§[9§;
                                                                              §§goto(addr175);
                                                                           }
                                                                           addr175:
                                                                           while(true)
                                                                           {
                                                                              this.§&U§ = param1.each;
                                                                              §§goto(addr140);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§3!§ = param1.§0$§;
                                                                              §§goto(addr63);
                                                                              continue loop25;
                                                                           }
                                                                           addr134:
                                                                        }
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr78);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr233);
                                                      }
                                                   }
                                                   §§goto(addr234);
                                                }
                                                else
                                                {
                                                   §§goto(addr232);
                                                }
                                             }
                                          }
                                       }
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc5_ && param1)
               {
                  continue;
               }
               §§goto(addr249);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return §-;§.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;D§.x);
            if(_loc3_ || this)
            {
               §§push(this.§8!"§.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr44:
                     §§push(this.§4k§);
                     if(!_loc2_)
                     {
                        §§push(this.§;D§.y);
                        if(_loc3_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_ || param1)
                           {
                              addr71:
                              §§push(this.§@_§.x);
                              if(_loc3_ || param1)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr93:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          addr96:
                                          §§push(this.§;D§.x);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr106:
                                             §§push(this.§8!"§.y);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc2_)
                                                {
                                                   addr124:
                                                   §§push(this.§4k§);
                                                   if(!(_loc2_ && this))
                                                   {
                                                      addr133:
                                                      §§push(this.§;D§.y);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr145);
                                                      }
                                                      addr145:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         addr141:
                                                         §§push(this.§@_§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr96);
                                 }
                                 §§goto(addr106);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr96);
               }
               §§goto(addr71);
            }
            §§goto(addr44);
         }
         §§goto(addr93);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§;D§.y;
         }
      }
      
      public function §]f§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = §-;§;
         var _loc2_:b2Body = §`x§;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2 = _loc2_.GetWorldPoint(this.m_localAnchor2);
         §§push(_loc5_.x);
         if(!(_loc10_ && _loc1_))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc11_)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc11_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc11_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2 = _loc1_.§=2§(this.§!-§);
            §§push(_loc8_.x);
            if(_loc11_ || _loc3_)
            {
               §§push(_loc6_);
               if(_loc11_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     addr123:
                     §§push(_loc8_.y);
                     if(!(_loc10_ && this))
                     {
                        addr132:
                        §§push(§§pop() * _loc7_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc10_ && _loc2_))
                     {
                        return Number(§§pop());
                     }
                  }
               }
               §§goto(addr132);
            }
            §§goto(addr123);
         }
         §§goto(addr54);
      }
      
      public function §,!9§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = §-;§;
         var _loc2_:b2Body = §`x§;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!(_loc21_ && this))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_ || this)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!(_loc21_ && _loc2_))
            {
               §§push(_loc4_);
               if(!(_loc21_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc22_ || _loc3_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc22_)
                     {
                        addr102:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc22_ || _loc3_)
                     {
                        addr112:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc22_ || this)
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc21_)
                     {
                        §§push(_loc4_);
                        if(!(_loc21_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_ || _loc1_)
                           {
                              §§push(_loc3_.col2.y);
                              if(_loc22_ || this)
                              {
                                 addr154:
                                 §§push(§§pop() + §§pop() * _loc5_);
                                 if(!(_loc21_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc22_)
                                    {
                                       addr165:
                                       _loc5_ = §§pop();
                                       if(_loc22_ || this)
                                       {
                                          addr173:
                                          §§push(_loc6_);
                                          if(_loc22_ || _loc1_)
                                          {
                                             addr181:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       _loc3_ = _loc2_.m_xf.R;
                                       §§push(this.m_localAnchor2.x);
                                       if(_loc22_ || _loc3_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(!_loc21_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(!(_loc21_ && this))
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(!_loc21_)
                                          {
                                             addr224:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          if(!_loc21_)
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
                                                   if(!_loc21_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc22_)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc21_ && _loc2_))
                                                            {
                                                               §§push(_loc8_);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc21_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc22_ || _loc2_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_.col1);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(!_loc21_)
                                                                                    {
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop1;
                                                                                       addr243:
                                                                                       if(_loc21_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr250:
                                                                                       _loc7_ = §§pop();
                                                                                       if(!(_loc22_ || _loc2_))
                                                                                       {
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             addr236:
                                                                                             if(!(_loc21_ && this))
                                                                                             {
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc22_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc8_ = §§pop();
                                                                                                   continue loop9;
                                                                                                   §§goto(addr236);
                                                                                                }
                                                                                                addr377:
                                                                                                var _loc9_:Number = §§pop();
                                                                                                §§push(_loc1_.m_sweep.c.y);
                                                                                                if(_loc22_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc5_);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      addr393:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc10_:* = §§pop();
                                                                                                   §§push(_loc2_.m_sweep.c.x);
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc7_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc11_:* = §§pop();
                                                                                                   §§push(_loc2_.m_sweep.c.y);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() + _loc8_);
                                                                                                      if(!(_loc21_ && _loc3_))
                                                                                                      {
                                                                                                         addr422:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      §§push(_loc11_);
                                                                                                      if(!_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() - _loc9_);
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            addr431:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         var _loc13_:* = §§pop();
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc22_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - _loc10_);
                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                            {
                                                                                                               addr450:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc14_:* = §§pop();
                                                                                                            var _loc15_:b2Vec2 = _loc1_.§=2§(this.§!-§);
                                                                                                            var _loc16_:b2Vec2 = _loc1_.§4!h§;
                                                                                                            var _loc17_:b2Vec2 = _loc2_.§4!h§;
                                                                                                            §§push(_loc1_.m_angularVelocity);
                                                                                                            if(_loc22_ || _loc2_)
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
                                                                                                            if(_loc22_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(_loc18_);
                                                                                                               if(_loc22_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc22_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc15_.y);
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc21_)
                                                                                                                        {
                                                                                                                           addr514:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 if(_loc22_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_.x);
                                                                                                                                    if(!_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc22_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc21_)
                                                                                                                                          {
                                                                                                                                             addr543:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                addr546:
                                                                                                                                                §§push(_loc15_.x);
                                                                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_.x);
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                         if(_loc22_ || _loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr575:
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!(_loc21_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc21_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_.x);
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        if(_loc22_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr606:
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           if(_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              addr609:
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!(_loc21_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr620:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr623:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!(_loc21_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr631:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc22_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr639:
                                                                                                                                                                                             §§push(_loc15_.y);
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr643:
                                                                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                                                                if(!_loc21_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(!(_loc21_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr671:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc22_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr679:
                                                                                                                                                                                                               §§push(_loc16_.y);
                                                                                                                                                                                                               if(_loc22_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr709);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr701);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr712:
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr701:
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            if(_loc22_ || _loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr709:
                                                                                                                                                                                                               §§push(§§pop() * _loc4_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr723);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr723:
                                                                                                                                                                                                         return Number(§§pop());
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr709);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr671);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr679);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr712);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr643);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr701);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr623);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr712);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr631);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr609);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr606);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr623);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr620);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr575);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr712);
                                                                                                                                             }
                                                                                                                                             §§goto(addr723);
                                                                                                                                          }
                                                                                                                                          §§goto(addr639);
                                                                                                                                       }
                                                                                                                                       §§goto(addr712);
                                                                                                                                    }
                                                                                                                                    §§goto(addr701);
                                                                                                                                 }
                                                                                                                                 §§goto(addr643);
                                                                                                                              }
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                           §§goto(addr723);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr712);
                                                                                                                  }
                                                                                                                  §§goto(addr514);
                                                                                                               }
                                                                                                               §§goto(addr543);
                                                                                                            }
                                                                                                            §§goto(addr546);
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                      }
                                                                                                      §§goto(addr431);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                                addr312:
                                                                                             }
                                                                                          }
                                                                                          addr372:
                                                                                          §§push(_loc4_);
                                                                                          break loop3;
                                                                                       }
                                                                                       if(_loc21_ && this)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push(_loc1_.m_sweep.c.x);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§goto(addr372);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        addr364:
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  §§push(_loc8_);
                                                                  addr295:
                                                                  break;
                                                                  if(!(_loc21_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc21_ && _loc3_))
                                                                     {
                                                                        addr311:
                                                                        §§goto(addr312);
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               addr373:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc21_)
                                                               {
                                                               }
                                                               §§goto(addr377);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr373);
                                                }
                                             }
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr173);
               }
               §§goto(addr102);
            }
            §§goto(addr112);
         }
         §§goto(addr50);
      }
      
      public function §0§() : Boolean
      {
         return this.§3!§;
      }
      
      public function §+!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               loop1:
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.§3!§ = param1;
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
         §§goto(addr68);
      }
      
      public function §"!M§() : Number
      {
         return this.§%!I§;
      }
      
      public function §6!4§() : Number
      {
         return this.§^!b§;
      }
      
      public function §=^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               §§goto(addr81);
            }
         }
         addr81:
         while(true)
         {
            this.§%!I§ = param1;
            do
            {
               this.§^!b§ = param2;
            }
            while(_loc3_);
            
            if(_loc4_ || param2)
            {
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1!L§() : Boolean
      {
         return this.§8!_§;
      }
      
      public function §4#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §-;§.SetAwake(true);
            do
            {
               §`x§.SetAwake(true);
               do
               {
                  this.§8!_§ = param1;
               }
               while(!(_loc2_ || param1));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §#f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §-;§.SetAwake(true);
         }
         while(true)
         {
            §`x§.SetAwake(true);
            while(_loc3_)
            {
               this.§2"§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §9!W§() : Number
      {
         return this.§2"§;
      }
      
      public function §#<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§&U§ = param1;
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
         §§goto(addr54);
      }
      
      public function §5J§() : Number
      {
         return this.§&U§;
      }
      
      public function §>!P§() : Number
      {
         return this.§4k§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc5_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         if(!_loc23_)
         {
            §%y§.SetV(_loc2_.§&r§());
            if(_loc24_)
            {
               §,V§.SetV(_loc3_.§&r§());
            }
         }
         var _loc6_:b2Transform = _loc2_.§1?§();
         var _loc7_:b2Transform = _loc3_.§1?§();
         _loc4_ = _loc2_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc23_ && this))
         {
            §§push(§§pop() - §%y§.x);
            if(!(_loc23_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc8_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc24_ || _loc3_)
         {
            §§push(§§pop() - §%y§.y);
            if(_loc24_)
            {
               addr108:
               §§push(Number(§§pop()));
            }
            var _loc9_:* = §§pop();
            if(!(_loc23_ && _loc3_))
            {
               §§push(_loc4_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(!_loc23_)
                  {
                     §§push(_loc8_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc24_)
                        {
                           while(true)
                           {
                              §§push(_loc4_.col2);
                              addr229:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr230:
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                    addr231:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr232:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr233:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr227:
                        }
                        addr234:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           addr235:
                           while(true)
                           {
                              continue loop0;
                           }
                        }
                        addr198:
                        if(_loc23_ && this)
                        {
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                        loop6:
                        while(_loc24_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           loop7:
                           while(true)
                           {
                              _loc9_ = §§pop();
                              addr215:
                              while(true)
                              {
                                 if(_loc24_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc24_ || _loc3_)
                                    {
                                       if(!_loc23_)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop7;
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr235);
                              }
                           }
                        }
                        §§goto(addr234);
                     }
                  }
                  §§goto(addr227);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr108);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         var _loc4_:b2Vec2 = _loc2_.§4!h§;
         §§push(_loc2_.m_angularVelocity);
         if(!(_loc24_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§4!h§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc23_)
         {
            §§push(this.§8!_§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(_loc23_ || _loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr737:
                        while(true)
                        {
                           §§push(this.§!!I§ == §;x§);
                           if(!_loc24_)
                           {
                              if(!_loc24_)
                              {
                                 §§push(!§§pop());
                                 if(_loc23_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§push(this.§@_§.x);
                        if(_loc23_ || param1)
                        {
                           §§push(_loc6_.x);
                           loop6:
                           while(true)
                           {
                              §§push(_loc4_.x);
                              if(!_loc23_)
                              {
                                 break;
                              }
                              §§push(§§pop() - §§pop());
                              loop7:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(this.§@_§);
                                    while(true)
                                    {
                                       §§push(§§pop().y);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc6_.y);
                                          if(!_loc24_)
                                          {
                                             §§push(_loc4_.y);
                                             if(_loc23_ || _loc3_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!(_loc24_ && _loc3_))
                                                {
                                                   addr681:
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc24_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.m_a2);
                                                         if(_loc23_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(_loc23_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_a1);
                                                                     if(_loc23_ || this)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr720:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc13_ = §§pop();
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§ !J§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§2"§);
                                                                                          addr588:
                                                                                          while(!_loc24_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop10;
                                                                                          addr252:
                                                                                          if(!(_loc23_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          loop46:
                                                                                          while(!(_loc24_ && this))
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   addr270:
                                                                                                   if(!(_loc23_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(_loc23_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §9!6§ * _loc8_);
                                                                                                   }
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop48:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         if(!_loc24_)
                                                                                                         {
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               break;
                                                                                                               addr162:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + §9!6§ * _loc9_);
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc23_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc23_)
                                                                                                                     {
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           addr93:
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§9!7§ * _loc11_);
                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             addr373:
                                                                                                                                             loop38:
                                                                                                                                             while(!_loc24_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc24_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   loop39:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr321:
                                                                                                                                                            if(!(_loc24_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_a2);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     break loop46;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  addr226:
                                                                                                                                                                  if(_loc24_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc24_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        addr245:
                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr252);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           loop25:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc16_ = §§pop();
                                                                                                                                                                              addr553:
                                                                                                                                                                              loop23:
                                                                                                                                                                              for(; _loc23_ || this; §§goto(addr553))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§`M§);
                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§&U§);
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop11;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(!(_loc24_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.m_a1);
                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    loop20:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       loop21:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§4k§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr567:
                                                                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr609:
                                                                                                                                                                                             while(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                                §§goto(addr567);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                             addr334:
                                                                                                                                                                                             while(_loc23_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc11_ = §§pop();
                                                                                                                                                                                                loop43:
                                                                                                                                                                                                while(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc24_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   §§push(_loc4_.x);
                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §1!h§ * _loc8_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   loop44:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      §§push(_loc4_.y);
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §1!h§ * _loc9_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      addr290:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§%k§ * _loc10_);
                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr226);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr767:
                                                                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr776:
                                                                                                                                                                                                               §§push(_loc4_.y);
                                                                                                                                                                                                               break loop10;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr794:
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr815:
                                                                                                                                                                                                               §§push(this.m_s1);
                                                                                                                                                                                                               if(_loc23_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr824:
                                                                                                                                                                                                                  §§push(§§pop() * _loc5_);
                                                                                                                                                                                                                  break loop12;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr824);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§8!"§.y);
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr767);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr809:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop11;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break loop12;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr824);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr830:
                                                                                                                                                                                          var _loc12_:* = §§pop();
                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§3!§);
                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr850:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         if(!(_loc24_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§!!I§ == §5!§);
                                                                                                                                                                                                            if(_loc23_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr882:
                                                                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr891:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§@_§.x);
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc4_.x);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc23_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc23_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§@_§.y);
                                                                                                                                                                                                                                       if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr933:
                                                                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - _loc4_.y);
                                                                                                                                                                                                                                             if(!(_loc24_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr947:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.m_a2);
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr965:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr973:
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.m_a1);
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr986:
                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc5_);
                                                                                                                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr994:
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc17_ = §§pop();
                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§;D§);
                                                                                                                                                                                                                                                                                 if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc18_ = §§pop().Copy();
                                                                                                                                                                                                                                                                                    _loc19_ = this.§^!3§.§]j§(new b2Vec2(),-_loc12_,-_loc17_);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1691:
                                                                                                                                                                                                                                                                                       this.§;D§.§!V§(_loc19_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr1694:
                                                                                                                                                                                                                                                                                    if(this.§!!I§ == §1p§)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1687:
                                                                                                                                                                                                                                                                                       this.§;D§.y = b2Math.§-!V§(this.§;D§.y,0);
                                                                                                                                                                                                                                                                                       addr1642:
                                                                                                                                                                                                                                                                                       _loc20_ = -_loc12_ - (this.§;D§.y - _loc18_.y) * this.§^!3§.col2.x;
                                                                                                                                                                                                                                                                                       addr1678:
                                                                                                                                                                                                                                                                                       addr1688:
                                                                                                                                                                                                                                                                                       addr1643:
                                                                                                                                                                                                                                                                                       addr1641:
                                                                                                                                                                                                                                                                                       addr1629:
                                                                                                                                                                                                                                                                                       addr1634:
                                                                                                                                                                                                                                                                                       addr1639:
                                                                                                                                                                                                                                                                                       addr1632:
                                                                                                                                                                                                                                                                                       addr1626:
                                                                                                                                                                                                                                                                                       addr1680:
                                                                                                                                                                                                                                                                                       addr1628:
                                                                                                                                                                                                                                                                                       addr1640:
                                                                                                                                                                                                                                                                                       addr1635:
                                                                                                                                                                                                                                                                                       if(this.§^!3§.col1.x != 0)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1596:
                                                                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                                                                          §§push(this.§^!3§.col1.x);
                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1609:
                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                             §§push(_loc18_.x);
                                                                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1614:
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1622:
                                                                                                                                                                                                                                                                                                   _loc21_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1550:
                                                                                                                                                                                                                                                                                                      §§push(this.§;D§);
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                  §§push(this.§;D§.x);
                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - _loc18_.x);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                  addr1573:
                                                                                                                                                                                                                                                                                                                  if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                        §§push(this.§;D§.y);
                                                                                                                                                                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - _loc18_.y);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1526:
                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1473:
                                                                                                                                                                                                                                                                                                                           §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                           §§push(this.§8!"§.x);
                                                                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1483:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1490:
                                                                                                                                                                                                                                                                                                                                    §§push(this.§@_§.x);
                                                                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1493:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1496:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1499:
                                                                                                                                                                                                                                                                                                                                             _loc8_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1417:
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§8!"§);
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1435:
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§@_§);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1449:
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                               if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr1459:
                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1343:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1373:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.m_s1);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1378:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr1382:
                                                                                                                                                                                                                                                                                                                                                                                             §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr1385:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr1396:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               addr1295:
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(_loc19_.x);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1314:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc19_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr1323:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr1326:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr1329:
                                                                                                                                                                                                                                                                                                                                                                                                                                    _loc11_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §1!h§ * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §1!h§ * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1273:
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr1291:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr1208:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§%k§ * _loc10_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1231:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        addr1239:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §9!6§ * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr1181:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr1149:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §9!6§ * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§9!7§ * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     addr1085:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr1095:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2036:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr2085:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2060:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc3_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2089:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2060:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc24_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2083:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2085);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2089);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      return;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr2076:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2083);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1694);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1273);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1149);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2076);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1343);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1231);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1239);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1314);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1273);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1095);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1385);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1208);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1396);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1085);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1181);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1678);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1688);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1643);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1291);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr2085);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1326);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1609);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1373);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1378);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1314);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1642);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1614);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1295);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1526);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2060);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1641);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1493);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1382);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1323);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1378);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1385);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2060);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1629);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr1579:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      _loc21_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      addr1588:
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1550);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1459);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1449);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1642);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1496);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1499);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1417);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1573);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2076);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1634);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1490);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1609);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1473);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1483);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1588);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2060);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1622);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1596);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1639);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1493);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1632);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1642);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1671:
                                                                                                                                                                                                                                                                                                                        §§goto(addr1626);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1661:
                                                                                                                                                                                                                                                                                                                     §§push(this.§;D§);
                                                                                                                                                                                                                                                                                                                     §§push(b2Math.§]!#§(this.§;D§.y,0));
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2076);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                  §§goto(addr1671);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1687);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1691);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1680);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1661);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2076);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1628);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1640);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1635);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1579);
                                                                                                                                                                                                                                                                                       §§push(_loc18_.x);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(this.§!!I§);
                                                                                                                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() == §`7§)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr1661);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1687);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1694);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr2022:
                                                                                                                                                                                                                                                                                    §§push(this.§;D§.x);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + _loc22_);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                    addr2017:
                                                                                                                                                                                                                                                                                    _loc8_ = Number(_loc22_ * this.§8!"§.x);
                                                                                                                                                                                                                                                                                    addr2030:
                                                                                                                                                                                                                                                                                    addr2018:
                                                                                                                                                                                                                                                                                    addr2012:
                                                                                                                                                                                                                                                                                    addr2015:
                                                                                                                                                                                                                                                                                    addr2016:
                                                                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                                                                    §§push(this.§8!"§);
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr2008:
                                                                                                                                                                                                                                                                                       _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                                                       addr2007:
                                                                                                                                                                                                                                                                                       addr2009:
                                                                                                                                                                                                                                                                                       addr2006:
                                                                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1986:
                                                                                                                                                                                                                                                                                             §§push(this.m_s1);
                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1997:
                                                                                                                                                                                                                                                                                                   _loc10_ = Number(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   addr1937:
                                                                                                                                                                                                                                                                                                   addr1998:
                                                                                                                                                                                                                                                                                                   addr1996:
                                                                                                                                                                                                                                                                                                   §§push(_loc22_);
                                                                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1951:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * this.m_s2);
                                                                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1961:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr1968:
                                                                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §1!h§ * _loc8_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §1!h§ * _loc9_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                 addr1934:
                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1859:
                                                                                                                                                                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                          §§push(§%k§ * _loc10_);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1870:
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             if(_loc23_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1886:
                                                                                                                                                                                                                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §9!6§ * _loc8_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr1820:
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §9!6§ * _loc9_);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                      addr1852:
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1751:
                                                                                                                                                                                                                                                                                                                                                               §§push(§9!7§ * _loc11_);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc23_ || param1)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1775:
                                                                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                           if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1782:
                                                                                                                                                                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1820);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr2036);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr2030);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1934);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1852);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1820);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1870);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1951);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1775);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1951);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1859);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1775);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1887:
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1887);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2007);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1937);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1961);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1986);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2018);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1998);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1968);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr2019:
                                                                                                                                                                                                                                                                                                                              §§goto(addr2022);
                                                                                                                                                                                                                                                                                                                              §§push(this.§;D§);
                                                                                                                                                                                                                                                                                                                              addr2035:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2009);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2017);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1996);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1997);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr2034:
                                                                                                                                                                                                                                                                                                               _loc22_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                               §§goto(addr2035);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr2007);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2034);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2012);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2022);
                                                                                                                                                                                                                                                                                                   addr1995:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2015);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2006);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr2016);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2008);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr2014:
                                                                                                                                                                                                                                                                                    §§goto(addr2014);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2022);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1997);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1751);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1870);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1859);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1710:
                                                                                                                                                                                                                                                               if(§§pop() != §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1716:
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§^!3§.col1.x);
                                                                                                                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1730:
                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr2019);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1820);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1782);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1859);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1995);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1951);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2022);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2034);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr986);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1730);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1775);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr973);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr965);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr947);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr994);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1886);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2008);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr986);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr933);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1716);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1886);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§^!3§.col1.x);
                                                                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1710);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2022);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1997);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr891);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2022);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr882);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr891);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr850);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1997);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr542:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(_loc23_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(b2Math);
                                                                                                                                                                                 §§push(this.§4k§);
                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    if(!(_loc24_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr507:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                       if(!(_loc24_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§4k§ = §§pop().§3X§(§§pop(),§§pop(),_loc16_);
                                                                                                                                                                                    break loop47;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr507);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr737);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              break loop38;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr759:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr762);
                                                                                                                                                                        }
                                                                                                                                                                        addr466:
                                                                                                                                                                     }
                                                                                                                                                                     addr829:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr830);
                                                                                                                                                               }
                                                                                                                                                               continue loop7;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               break loop39;
                                                                                                                                                               §§goto(addr321);
                                                                                                                                                            }
                                                                                                                                                            addr460:
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr829);
                                                                                                                                                      continue loop50;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      break loop48;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr829);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc23_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   _loc14_ = §§pop();
                                                                                                                                                   addr484:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§@_§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!(_loc23_ || _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         addr752:
                                                                                                                                                         §§push(_loc4_.x);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            break loop6;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr809);
                                                                                                                                                         addr451:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr830);
                                                                                                                                                   }
                                                                                                                                                   addr484:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr829);
                                                                                                                                          }
                                                                                                                                          §§goto(addr334);
                                                                                                                                       }
                                                                                                                                       §§goto(addr762);
                                                                                                                                    }
                                                                                                                                    §§goto(addr815);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr588);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop11;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     §§goto(addr829);
                                                                                                                  }
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            continue loop47;
                                                                                                         }
                                                                                                         addr439:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            §§goto(addr356);
                                                                                                         }
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      §§goto(addr290);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr484);
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr334);
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                          addr260:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr719:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr809);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr794);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc24_)
                                                               {
                                                                  §§goto(addr829);
                                                               }
                                                               §§goto(addr830);
                                                            }
                                                            §§goto(addr824);
                                                         }
                                                         break;
                                                      }
                                                      addr812:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc23_)
                                                      {
                                                         §§goto(addr794);
                                                      }
                                                      §§goto(addr829);
                                                   }
                                                   §§goto(addr719);
                                                }
                                                else
                                                {
                                                   §§goto(addr776);
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr681);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc24_ && param1))
                                       {
                                          §§goto(addr767);
                                       }
                                       §§goto(addr824);
                                    }
                                 }
                              }
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc23_)
                           {
                              §§goto(addr759);
                           }
                           §§goto(addr794);
                        }
                        break;
                     }
                     §§push(this.m_s2);
                     if(_loc23_)
                     {
                        §§goto(addr762);
                     }
                     §§goto(addr812);
                  }
                  §§push(this.§8!"§.x);
                  if(_loc23_)
                  {
                     §§push(_loc6_.x);
                     if(!(_loc24_ && param1))
                     {
                        §§goto(addr752);
                     }
                     §§goto(addr767);
                  }
                  §§goto(addr762);
               }
            }
         }
         §§goto(addr484);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc37_:Boolean = true;
         var _loc38_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         §§push(_loc4_.m_sweep.a);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep.a);
         if(!(_loc38_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(!(_loc38_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(_loc37_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         §§push(false);
         if(_loc37_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc18_:* = §§pop();
         §§push(0);
         if(_loc37_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:* = §§pop();
         var _loc20_:b2Mat22 = b2Mat22.§[_§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§[_§(_loc9_);
         _loc10_ = _loc20_;
         §§push(this.m_localAnchor1.x);
         if(!_loc38_)
         {
            §§push(§§pop() - §%y§.x);
            if(!(_loc38_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc38_)
         {
            §§push(§§pop() - §%y§.y);
            if(!_loc38_)
            {
               addr155:
               §§push(Number(§§pop()));
            }
            var _loc23_:* = §§pop();
            if(!(_loc38_ && _loc2_))
            {
               §§push(_loc10_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  addr272:
                  while(true)
                  {
                     §§push(_loc22_);
                     addr273:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr274:
                        while(true)
                        {
                           §§push(_loc10_.col2);
                           addr276:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr277:
                              while(true)
                              {
                                 §§push(_loc23_);
                                 addr278:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr279:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr280:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr281:
                                          while(true)
                                          {
                                             _loc11_ = §§pop();
                                             addr282:
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
                     }
                  }
               }
            }
            §§goto(addr268);
         }
         §§goto(addr155);
      }
   }
}
