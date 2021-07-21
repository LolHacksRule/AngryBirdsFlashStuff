package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §@!r§:b2Vec2;
      
      private var §;!Y§:b2Vec2;
      
      private var §2d§:b2Vec2;
      
      private var §6!V§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,"0§:b2Mat22;
      
      private var §?;§:b2Vec2;
      
      private var §+!§:Number;
      
      private var §;!T§:Number;
      
      private var §`!v§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §3u§:Number;
      
      private var §!k§:Boolean;
      
      private var §"%§:Boolean;
      
      private var §'T§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc2_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§@!r§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§;!Y§ = new b2Vec2();
                     while(true)
                     {
                        this.§2d§ = new b2Vec2();
                        loop4:
                        while(!(_loc5_ && _loc3_))
                        {
                           this.§6!V§ = new b2Vec2();
                           loop5:
                           for(; _loc6_; loop9:
                           while(_loc6_ || _loc3_)
                           {
                              this.m_localAnchor2.SetV(param1.§ !c§);
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    this.§@!r§.SetV(param1.§#"$§);
                                    while(_loc6_)
                                    {
                                       §§push(this.§;!Y§);
                                       while(true)
                                       {
                                          §§push(this.§@!r§);
                                          addr227:
                                          addr244:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(-§§pop());
                                             }
                                             addr236:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                §§push(§§pop().x);
                                                addr212:
                                                continue loop1;
                                                if(_loc5_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                §§pop().y = §§pop();
                                                while(true)
                                                {
                                                   this.§?;§.§@!s§();
                                                   while(!_loc5_)
                                                   {
                                                      this.§+!§ = 0;
                                                      loop18:
                                                      while(true)
                                                      {
                                                         this.§;!T§ = 0;
                                                         loop19:
                                                         while(_loc6_)
                                                         {
                                                            this.§`!v§ = param1.§32§;
                                                            while(true)
                                                            {
                                                               this.§78§ = param1.§[!8§;
                                                               continue loop18;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               continue loop19;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr289);
                                                      }
                                                   }
                                                   continue loop9;
                                                   addr101:
                                                   while(!(_loc5_ && _loc2_))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§'T§ = b2internal::@g;
                                                         §§goto(addr79);
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                }
                                             }
                                          }
                                          §§push(this.§;!Y§);
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§@!r§);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr212);
                                          }
                                          else
                                          {
                                             §§goto(addr227);
                                          }
                                       }
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr74);
                                    }
                                    §§goto(addr295);
                                 }
                                 break;
                                 addr114:
                                 while(!(_loc5_ && this))
                                 {
                                    this.§"%§ = param1.§7!S§;
                                    §§goto(addr101);
                                    §§goto(addr79);
                                 }
                              }
                              §§goto(addr281);
                           })
                           {
                              this.§,"0§ = new b2Mat22();
                              while(true)
                              {
                                 this.§?;§ = new b2Vec2();
                                 addr289:
                                 while(true)
                                 {
                                    super(param1);
                                    addr281:
                                    while(_loc6_)
                                    {
                                       this.m_localAnchor1.SetV(param1.§!2§);
                                       continue loop5;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     this.§!k§ = param1.§4!E§;
                     §§goto(addr114);
                  }
                  while(true)
                  {
                     if(!(_loc6_ || this))
                     {
                        continue loop1;
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr225);
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§?;§.x);
            if(!(_loc2_ && _loc2_))
            {
               §§push(this.§6!V§.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     §§push(this.§;!T§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(this.§?;§.y);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(this.§2d§.x);
                              if(!_loc2_)
                              {
                                 addr76:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr88:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(this.§?;§.x);
                                          if(!_loc2_)
                                          {
                                             addr101:
                                             §§push(this.§6!V§.y);
                                             if(!(_loc2_ && this))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   §§push(this.§;!T§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(this.§?;§.y);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr146);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr141);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr76);
                     }
                  }
                  §§goto(addr146);
               }
               §§goto(addr101);
            }
            addr146:
            §§push(§§pop() + §§pop());
            if(!(_loc2_ && _loc2_))
            {
               addr141:
               §§push(this.§2d§.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
         }
         §§goto(addr88);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§?;§.y;
         }
      }
      
      public function §9[§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(!(_loc11_ && this))
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!(_loc11_ && _loc1_))
         {
            §§push(§§pop() - _loc4_.y);
            if(!(_loc11_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2;
         §§push((_loc8_ = _loc1_.§<!v§(this.§@!r§)).x);
         if(_loc10_ || _loc3_)
         {
            §§push(_loc6_);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc10_)
               {
                  §§push(_loc8_.y);
                  if(!_loc11_)
                  {
                     addr119:
                     §§push(§§pop() * _loc7_);
                     if(_loc10_ || this)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc11_ && _loc2_))
                        {
                           addr147:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr147);
                     }
                  }
                  var _loc9_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr147);
            }
            §§goto(addr119);
         }
         §§goto(addr147);
      }
      
      public function §%l§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::0"7;
         var _loc2_:b2Body = b2internal:: `;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_ || this)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_ || _loc1_)
            {
               addr53:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc21_)
               {
                  addr67:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(_loc22_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(_loc22_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc21_ && _loc2_))
                     {
                        addr90:
                        §§push(_loc3_.col2.x);
                        if(!(_loc21_ && _loc2_))
                        {
                           addr100:
                           §§push(§§pop() * _loc5_);
                        }
                        §§push(§§pop() + §§pop());
                        if(!(_loc21_ && _loc1_))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc6_:* = §§pop();
                     if(!_loc21_)
                     {
                        §§push(_loc3_.col1.y);
                        if(!(_loc21_ && _loc1_))
                        {
                           §§push(_loc4_);
                           if(_loc22_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_ || _loc3_)
                              {
                                 §§push(_loc3_.col2.y);
                                 if(!_loc21_)
                                 {
                                    addr140:
                                    §§push(§§pop() * _loc5_);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc21_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc21_)
                                    {
                                    }
                                    addr160:
                                    _loc4_ = §§pop();
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!_loc21_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(!_loc21_)
                                       {
                                          addr178:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(this.m_localAnchor2.y);
                                       if(_loc22_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(_loc22_)
                                          {
                                             addr192:
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
                                                if(!_loc21_)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc22_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc22_)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr321:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               addr322:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr324:
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc21_ && _loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc6_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           addr247:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              if(_loc21_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc21_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(_loc7_);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc22_ || _loc2_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr341:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc22_ || _loc2_)
                                                                                 {
                                                                                    addr359:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc9_:* = §§pop();
                                                                              §§push(_loc1_.m_sweep.c.y);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 §§push(§§pop() + _loc5_);
                                                                                 if(_loc22_)
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
                                                                                    addr388:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc11_:* = §§pop();
                                                                                 §§push(_loc2_.m_sweep.c.y);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(§§pop() + _loc8_);
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc11_);
                                                                                 if(_loc22_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc9_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc13_:* = §§pop();
                                                                                 §§push(_loc12_);
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(§§pop() - _loc10_);
                                                                                    if(!(_loc21_ && _loc2_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 var _loc15_:b2Vec2 = _loc1_.§<!v§(this.§@!r§);
                                                                                 var _loc16_:b2Vec2 = _loc1_.§,b§;
                                                                                 var _loc17_:b2Vec2 = _loc2_.§,b§;
                                                                                 §§push(_loc1_.m_angularVelocity);
                                                                                 if(_loc22_ || this)
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
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(_loc22_ || _loc2_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc22_ || _loc1_)
                                                                                       {
                                                                                          §§push(_loc15_.y);
                                                                                          if(!(_loc21_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr503:
                                                                                                      §§push(_loc18_);
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         §§push(_loc15_.x);
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc22_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc22_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr534:
                                                                                                                     §§push(_loc15_.x);
                                                                                                                     if(_loc22_)
                                                                                                                     {
                                                                                                                        addr538:
                                                                                                                        §§push(_loc17_.x);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           addr542:
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(_loc22_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc21_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_.x);
                                                                                                                                          if(_loc22_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!(_loc21_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(!(_loc21_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(!(_loc21_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr600:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(!(_loc21_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr608:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr611:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc21_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr619:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc22_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr627:
                                                                                                                                                                  §§push(_loc15_.y);
                                                                                                                                                                  if(!(_loc21_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     addr636:
                                                                                                                                                                     §§push(_loc17_.y);
                                                                                                                                                                     if(_loc22_)
                                                                                                                                                                     {
                                                                                                                                                                        addr640:
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           addr643:
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc21_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr657:
                                                                                                                                                                                    §§push(_loc16_.y);
                                                                                                                                                                                    if(_loc22_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr666:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc21_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc21_ && _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr680:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                          if(!(_loc21_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr699:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr704:
                                                                                                                                                                                                return Number(§§pop());
                                                                                                                                                                                                addr703:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr703);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr704);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr680);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr678:
                                                                                                                                                                                    §§push(§§pop() * _loc4_);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr680);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr678);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr657);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr704);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr680);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr643);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr611);
                                                                                                                                                }
                                                                                                                                                §§goto(addr657);
                                                                                                                                             }
                                                                                                                                             §§goto(addr636);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr636);
                                                                                                                                    }
                                                                                                                                    §§goto(addr640);
                                                                                                                                 }
                                                                                                                                 §§goto(addr608);
                                                                                                                              }
                                                                                                                              §§goto(addr600);
                                                                                                                           }
                                                                                                                           §§goto(addr611);
                                                                                                                        }
                                                                                                                        §§goto(addr636);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr704);
                                                                                                               }
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                            §§goto(addr619);
                                                                                                         }
                                                                                                         §§goto(addr680);
                                                                                                      }
                                                                                                      §§goto(addr542);
                                                                                                   }
                                                                                                   §§goto(addr627);
                                                                                                }
                                                                                                §§goto(addr534);
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          §§goto(addr619);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr538);
                                                                                 }
                                                                                 §§goto(addr704);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           addr238:
                                                                           continue loop2;
                                                                           if(_loc21_ && this)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr247);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc1_.m_sweep.c.x);
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                              }
                                                                              §§goto(addr360);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr341);
                                                }
                                                §§goto(addr324);
                                             }
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              _loc5_ = §§pop();
                              if(_loc22_ || this)
                              {
                                 §§push(_loc6_);
                                 if(!_loc21_)
                                 {
                                    §§goto(addr160);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr140);
                        }
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr100);
               }
               §§goto(addr90);
            }
            §§goto(addr67);
         }
         §§goto(addr53);
      }
      
      public function §%!a§() : Boolean
      {
         return this.§!k§;
      }
      
      public function §9H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::0"7.SetAwake(true);
         }
         do
         {
            b2internal:: `.SetAwake(true);
            do
            {
               this.§!k§ = param1;
            }
            while(_loc3_);
            
         }
         while(!_loc2_);
         
      }
      
      public function §4!Z§() : Number
      {
         return this.§`!v§;
      }
      
      public function §5!9§() : Number
      {
         return this.§78§;
      }
      
      public function §<4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§`!v§ = param1;
                     do
                     {
                        this.§78§ = param2;
                     }
                     while(!_loc3_);
                     
                     if(!(_loc4_ && param2))
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
      
      public function §;_§() : Boolean
      {
         return this.§"%§;
      }
      
      public function §]v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               while(!(_loc2_ && _loc2_))
               {
                  this.§"%§ = param1;
                  if(_loc2_ && this)
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
      
      public function §^x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§3u§ = param1;
                     if(!_loc2_)
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
      
      public function §7U§() : Number
      {
         return this.§3u§;
      }
      
      public function §1!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::0"7.SetAwake(true);
            while(true)
            {
               b2internal:: `.SetAwake(true);
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§&5§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(!(_loc2_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §5C§() : Number
      {
         return this.§&5§;
      }
      
      public function §#!8§() : Number
      {
         return this.§;!T§;
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
