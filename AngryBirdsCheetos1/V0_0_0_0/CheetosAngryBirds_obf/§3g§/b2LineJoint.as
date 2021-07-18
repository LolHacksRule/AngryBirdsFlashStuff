package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §9!M§:b2Vec2;
      
      private var §8o§:b2Vec2;
      
      private var §&9§:b2Vec2;
      
      private var §5!§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §@X§:b2Mat22;
      
      private var §8v§:b2Vec2;
      
      private var §9<§:Number;
      
      private var §>G§:Number;
      
      private var §%! §:Number;
      
      private var §-4§:Number;
      
      private var §]d§:Number;
      
      private var §+>§:Number;
      
      private var §%+§:Boolean;
      
      private var §&!E§:Boolean;
      
      private var §^!H§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
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
                  this.§9!M§ = new b2Vec2();
                  while(true)
                  {
                     this.§8o§ = new b2Vec2();
                     while(true)
                     {
                        this.§&9§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§5!§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§@X§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§8v§ = new b2Vec2();
                                 loop7:
                                 while(_loc6_)
                                 {
                                    super(param1);
                                    loop8:
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§4B§);
                                       loop9:
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§ !Q§);
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                                addr277:
                                             }
                                             this.§9!M§.SetV(param1.§=!P§);
                                             while(_loc6_)
                                             {
                                                §§push(this.§8o§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this.§9!M§);
                                                   addr260:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      addr269:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop7;
                                             addr161:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   this.§+>§ = param1.motorSpeed;
                                                   loop23:
                                                   while(true)
                                                   {
                                                      this.§%+§ = param1.§9[§;
                                                      loop24:
                                                      while(!_loc5_)
                                                      {
                                                         continue loop0;
                                                         while(true)
                                                         {
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop24;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            this.§&9§.§^!#§();
                                                            while(true)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  addr82:
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     addr89:
                                                                     break;
                                                                  }
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop23;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§9<§ = 0;
                                                               continue loop4;
                                                               §§goto(addr82);
                                                            }
                                                         }
                                                         while(!_loc5_)
                                                         {
                                                            this.§%! § = param1.§^!<§;
                                                            while(true)
                                                            {
                                                               this.§-4§ = param1.§1g§;
                                                               break loop24;
                                                               addr56:
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§goto(addr270);
                                                      }
                                                      continue loop9;
                                                   }
                                                   return;
                                                   addr70:
                                                   addr155:
                                                }
                                                break;
                                                if(_loc5_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr56);
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
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
         §§goto(addr155);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§8v§.x);
            if(!_loc3_)
            {
               §§push(this.§5!§.x);
               if(_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     §§push(this.§>G§);
                     if(_loc2_ || param1)
                     {
                        §§push(this.§8v§.y);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || param1)
                           {
                              §§push(this.§&9§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    addr78:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       addr86:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§8v§.x);
                                          if(!_loc3_)
                                          {
                                             addr100:
                                             §§push(this.§5!§.y);
                                             if(!_loc3_)
                                             {
                                                addr105:
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr113:
                                                   §§push(this.§>G§);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(this.§8v§.y);
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                      addr149:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr145:
                                                         §§push(this.§&9§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr145);
                                                }
                                             }
                                             §§goto(addr149);
                                          }
                                          §§goto(addr113);
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr100);
                              }
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr86);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr86);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || param1)
         {
            return §§pop() * this.§8v§.y;
         }
      }
      
      public function §4[§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!_loc11_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!_loc11_)
            {
               §§push(§§pop() - _loc4_.y);
               if(_loc10_)
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§^T§(this.§9!M§)).x);
               if(_loc10_ || _loc3_)
               {
                  §§push(_loc6_);
                  if(_loc10_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc11_ && _loc1_))
                     {
                        addr95:
                        §§push(_loc8_.y);
                        if(!_loc11_)
                        {
                           §§push(§§pop() * _loc7_);
                           if(!_loc10_)
                           {
                           }
                           §§goto(addr123);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc11_ && _loc1_))
                        {
                           addr121:
                           §§push(Number(§§pop()));
                        }
                        addr123:
                        var _loc9_:* = §§pop();
                        return §§pop();
                        §§push(§§pop());
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr123);
               }
               §§goto(addr95);
            }
            §§goto(addr67);
         }
         §§goto(addr46);
      }
      
      public function §%p§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::2!D;
         var _loc2_:b2Body = b2internal::;B;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!(_loc21_ && _loc1_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc21_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc22_ || _loc3_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc22_)
            {
               §§push(_loc4_);
               if(!(_loc21_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc21_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!_loc21_)
                     {
                        addr95:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!_loc21_)
                     {
                        addr100:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc22_ || _loc2_)
                  {
                     §§push(_loc3_.col1.y);
                     if(!(_loc21_ && _loc1_))
                     {
                        §§push(_loc4_);
                        if(_loc22_ || _loc2_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_ || this)
                           {
                              §§push(_loc3_.col2.y);
                              if(!(_loc21_ && _loc1_))
                              {
                                 addr147:
                                 §§push(§§pop() + §§pop() * _loc5_);
                                 if(_loc22_ || _loc3_)
                                 {
                                    addr155:
                                    §§push(Number(§§pop()));
                                    if(_loc22_ || this)
                                    {
                                       addr163:
                                       _loc5_ = §§pop();
                                       if(!(_loc21_ && _loc1_))
                                       {
                                          §§push(_loc6_);
                                          if(_loc22_)
                                          {
                                             addr174:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                          addr176:
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(!(_loc21_ && _loc2_))
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(_loc22_)
                                             {
                                                addr198:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc22_)
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
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_.col2);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              addr338:
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_.col1);
                                                                                    if(!_loc22_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc21_ && _loc1_))
                                                                                       {
                                                                                          if(!(_loc22_ || _loc1_))
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(_loc3_.col2);
                                                                                             if(!_loc22_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc22_ || _loc3_))
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!(_loc21_ && _loc2_))
                                                                                                {
                                                                                                   addr297:
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop11:
                                                                                                      while(_loc22_)
                                                                                                      {
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  for(; _loc22_ || this; _loc7_ = §§pop(),if(!(_loc22_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },if(false)
                                                                                                                  {
                                                                                                                     continue loop10;
                                                                                                                  },addr370:,addr370:,§§push(_loc1_.m_sweep.c.x),if(_loc21_ && _loc2_)
                                                                                                                  {
                                                                                                                  },var _loc9_:* = §§pop(),§§push(_loc1_.m_sweep.c.y),if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc5_);
                                                                                                                     if(_loc22_ || this)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  },var _loc10_:* = §§pop(),§§push(_loc2_.m_sweep.c.x),if(_loc22_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc7_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  },var _loc11_:* = §§pop(),§§push(_loc2_.m_sweep.c.y),if(_loc22_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc8_);
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  },var _loc12_:* = §§pop(),§§push(_loc11_),if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc9_);
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  },var _loc13_:* = §§pop(),§§push(_loc12_),if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - _loc10_);
                                                                                                                     if(!(_loc21_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  },var _loc14_:* = §§pop(),var _loc15_:b2Vec2 = _loc1_.§^T§(this.§9!M§),var _loc16_:b2Vec2 = _loc1_.§%=§,var _loc17_:b2Vec2 = _loc2_.§%=§,§§push(_loc1_.m_angularVelocity),if(_loc22_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  },var _loc18_:* = §§pop(),§§push(_loc2_.m_angularVelocity),if(!_loc21_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  },var _loc19_:* = §§pop(),§§push(_loc13_),if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(!(_loc21_ && this))
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc22_ || this)
                                                                                                                        {
                                                                                                                           addr495:
                                                                                                                           §§push(_loc15_.y);
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc21_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    addr515:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc18_);
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_.x);
                                                                                                                                          if(_loc22_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc22_)
                                                                                                                                             {
                                                                                                                                                addr538:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr541:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc22_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr549:
                                                                                                                                                      §§push(_loc15_.x);
                                                                                                                                                      if(_loc22_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_.x);
                                                                                                                                                         if(!(_loc21_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr562:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               if(!_loc21_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(_loc22_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc21_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           addr592:
                                                                                                                                                                           §§push(_loc16_.x);
                                                                                                                                                                           if(_loc22_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr601:
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr604:
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(_loc22_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr612:
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(_loc22_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr620:
                                                                                                                                                                                       §§push(_loc5_);
                                                                                                                                                                                       if(_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc21_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr631:
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc22_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr639:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc15_.y);
                                                                                                                                                                                                   if(!_loc21_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr646:
                                                                                                                                                                                                      §§push(_loc17_.y);
                                                                                                                                                                                                      if(_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr650:
                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(!(_loc21_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr664:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr667:
                                                                                                                                                                                                                     §§push(_loc16_.y);
                                                                                                                                                                                                                     if(!(_loc21_ && _loc1_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr679:
                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                           if(_loc21_ && _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr690:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                           if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr699:
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!(_loc21_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr719:
                                                                                                                                                                                                                                 return Number(§§pop());
                                                                                                                                                                                                                                 addr718:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr718);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr719);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr690);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr679);
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr664);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr679);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr719);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr679);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr650);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr679);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr667);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr620);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr639);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr679);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr604);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr631);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr601);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr612);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr592);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr719);
                                                                                                                                             }
                                                                                                                                             §§goto(addr646);
                                                                                                                                          }
                                                                                                                                          §§goto(addr620);
                                                                                                                                       }
                                                                                                                                       §§goto(addr562);
                                                                                                                                    }
                                                                                                                                    §§goto(addr541);
                                                                                                                                 }
                                                                                                                                 §§goto(addr549);
                                                                                                                              }
                                                                                                                              §§goto(addr699);
                                                                                                                           }
                                                                                                                           §§goto(addr538);
                                                                                                                        }
                                                                                                                        §§goto(addr719);
                                                                                                                     }
                                                                                                                     §§goto(addr495);
                                                                                                                  },§§goto(addr515))
                                                                                                                  {
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(_loc22_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr312:
                                                                                                         }
                                                                                                         §§push(_loc4_);
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                break loop7;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr370);
                                                                                       }
                                                                                       §§goto(addr297);
                                                                                    }
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr338);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr176);
               }
               §§goto(addr95);
            }
            §§goto(addr100);
         }
         §§goto(addr72);
      }
      
      public function §#§() : Boolean
      {
         return this.§%+§;
      }
      
      public function §40§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::2!D.SetAwake(true);
         }
         while(true)
         {
            b2internal::;B.SetAwake(true);
            while(!_loc3_)
            {
               this.§%+§ = param1;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7d§() : Number
      {
         return this.§%! §;
      }
      
      public function §6_§() : Number
      {
         return this.§-4§;
      }
      
      public function §5B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            b2internal::2!D.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::;B.SetAwake(true);
               while(true)
               {
                  this.§%! § = param1;
                  loop2:
                  while(!(_loc4_ && this))
                  {
                     while(true)
                     {
                        this.§-4§ = param2;
                        if(!(_loc4_ && param2))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §@!'§() : Boolean
      {
         return this.§&!E§;
      }
      
      public function §03§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::2!D.SetAwake(true);
            do
            {
               b2internal::;B.SetAwake(true);
               do
               {
                  this.§&!E§ = param1;
               }
               while(_loc2_);
               
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §!^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            b2internal::2!D.SetAwake(true);
            while(true)
            {
               b2internal::;B.SetAwake(true);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§+>§ = param1;
            if(_loc2_ || param1)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5t§() : Number
      {
         return this.§+>§;
      }
      
      public function §@!#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::2!D.SetAwake(true);
         }
         while(true)
         {
            b2internal::;B.SetAwake(true);
            while(_loc3_ || param1)
            {
               this.§]d§ = param1;
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §"8§() : Number
      {
         return this.§]d§;
      }
      
      public function §5!D§() : Number
      {
         return this.§>G§;
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
