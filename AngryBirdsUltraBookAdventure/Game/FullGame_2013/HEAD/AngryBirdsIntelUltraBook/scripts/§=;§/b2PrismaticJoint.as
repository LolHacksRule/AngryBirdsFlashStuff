package §=;§
{
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Mat33;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   import §>!8§.b2Vec3;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!-§:b2Vec2;
      
      private var §#g§:b2Vec2;
      
      private var §^?§:Number;
      
      private var §@_§:b2Vec2;
      
      private var §8!"§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^!3§:b2Mat33;
      
      private var §;D§:b2Vec3;
      
      private var § !J§:Number;
      
      private var §4k§:Number;
      
      private var §%!I§:Number;
      
      private var §^!b§:Number;
      
      private var §&U§:Number;
      
      private var §2"§:Number;
      
      private var §3!§:Boolean;
      
      private var §8!_§:Boolean;
      
      private var §!!I§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || this)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
            }
            addr358:
         }
         loop1:
         while(true)
         {
            this.§!-§ = new b2Vec2();
            while(true)
            {
               this.§#g§ = new b2Vec2();
               loop3:
               while(true)
               {
                  this.§@_§ = new b2Vec2();
                  while(true)
                  {
                     this.§8!"§ = new b2Vec2();
                     loop5:
                     while(true)
                     {
                        this.§^!3§ = new b2Mat33();
                        loop6:
                        while(_loc5_)
                        {
                           this.§;D§ = new b2Vec3();
                           loop7:
                           while(true)
                           {
                              super(param1);
                              addr297:
                              while(!_loc6_)
                              {
                                 this.m_localAnchor1.SetV(param1.§>!g§);
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop7;
                                    addr232:
                                    while(!(_loc6_ && _loc2_))
                                    {
                                       if(_loc5_)
                                       {
                                          this.§^?§ = param1.§6![§;
                                          continue loop5;
                                       }
                                       §§goto(addr358);
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                           }
                        }
                        continue loop3;
                     }
                     if(_loc5_ || _loc3_)
                     {
                        return;
                     }
                  }
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr92);
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§;D§.x);
            if(!(_loc3_ && this))
            {
               §§push(this.§8!"§.x);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§push(this.§4k§);
                     if(!_loc3_)
                     {
                        §§push(this.§;D§.z);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              §§push(this.§@_§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr83);
                                 }
                                 §§goto(addr113);
                              }
                           }
                           addr83:
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              addr87:
                              §§push(§§pop() * §§pop());
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 addr95:
                                 §§push(this.§;D§.x);
                                 if(_loc2_)
                                 {
                                    §§push(this.§8!"§.y);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          addr113:
                                          §§push(this.§4k§);
                                          if(!_loc3_)
                                          {
                                             addr127:
                                             §§push(this.§;D§.z);
                                             if(!(_loc3_ && this))
                                             {
                                                §§goto(addr149);
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr127);
                                 }
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr95);
               }
               §§goto(addr83);
            }
            addr149:
            §§push(§§pop() + §§pop());
            if(!(_loc3_ && _loc3_))
            {
               addr145:
               §§push(this.§@_§.y);
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
         if(!(_loc2_ && param1))
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
         if(_loc11_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!_loc10_)
            {
               addr64:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc11_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2 = _loc1_.§=2§(this.§!-§);
            §§push(_loc8_.x);
            if(!_loc10_)
            {
               §§push(_loc6_);
               if(_loc11_ || this)
               {
                  §§goto(addr117);
               }
               §§push(§§pop() + §§pop());
               if(!_loc11_)
               {
               }
               §§goto(addr117);
            }
            addr117:
            §§push(§§pop() * §§pop());
            if(!_loc10_)
            {
               §§push(_loc8_.y);
               if(_loc11_)
               {
                  §§push(§§pop() * _loc7_);
               }
            }
            return Number(§§pop());
         }
         §§goto(addr64);
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
         if(!(_loc21_ && _loc1_))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_ || _loc3_)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc22_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc22_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(!_loc21_)
            {
               §§push(_loc4_);
               if(_loc22_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc21_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!(_loc21_ && _loc3_))
                     {
                        addr102:
                        §§push(§§pop() * _loc5_);
                     }
                     §§push(§§pop() + §§pop());
                     if(!(_loc21_ && _loc2_))
                     {
                        addr112:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc22_)
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc22_ || _loc1_)
                     {
                        §§push(_loc4_);
                        if(!(_loc21_ && _loc2_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc22_)
                           {
                              §§push(_loc3_.col2.y);
                              if(!(_loc21_ && _loc1_))
                              {
                                 addr147:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc21_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc22_ || _loc3_)
                                 {
                                 }
                                 addr182:
                                 _loc4_ = §§pop();
                                 _loc3_ = _loc2_.m_xf.R;
                                 §§push(this.m_localAnchor2.x);
                                 if(_loc22_ || _loc1_)
                                 {
                                    §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                    if(_loc22_ || _loc1_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(this.m_localAnchor2.y);
                                 if(_loc22_)
                                 {
                                    §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                    if(!(_loc21_ && _loc1_))
                                    {
                                       addr229:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    if(_loc22_ || _loc2_)
                                    {
                                       §§push(_loc3_.col1);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc22_)
                                          {
                                             §§push(_loc7_);
                                             if(!_loc21_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc21_ && _loc3_))
                                                {
                                                   §§push(_loc3_.col2);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc22_)
                                                      {
                                                         §§push(_loc8_);
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc21_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr369:
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              if(_loc21_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc21_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc21_ && _loc1_))
                                                                                    {
                                                                                       §§push(_loc3_.col2);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc21_ && _loc1_)
                                                                                          {
                                                                                             addr303:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc21_)
                                                                                             {
                                                                                             }
                                                                                             addr382:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr303:
                                                                                          }
                                                                                          continue loop2;
                                                                                          §§push(_loc4_);
                                                                                          break loop2;
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    if(!(_loc22_ || _loc1_))
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc22_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       _loc8_ = §§pop();
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc22_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(_loc22_ || _loc2_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      §§push(_loc1_.m_sweep.c.x);
                                                                                                      if(_loc22_ || _loc2_)
                                                                                                      {
                                                                                                         break loop6;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                    addr387:
                                                                                    var _loc9_:* = §§pop();
                                                                                    §§push(_loc1_.m_sweep.c.y);
                                                                                    if(!(_loc21_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop() + _loc5_);
                                                                                       if(!(_loc21_ && _loc2_))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc10_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.x);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc7_);
                                                                                       if(_loc22_ || _loc1_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc11_:* = §§pop();
                                                                                    §§push(_loc2_.m_sweep.c.y);
                                                                                    if(_loc22_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + _loc8_);
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    §§push(_loc11_);
                                                                                    if(_loc22_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc9_);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc13_:* = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    var _loc14_:* = §§pop();
                                                                                    var _loc15_:b2Vec2 = _loc1_.§=2§(this.§!-§);
                                                                                    var _loc16_:b2Vec2 = _loc1_.§4!h§;
                                                                                    var _loc17_:b2Vec2 = _loc2_.§4!h§;
                                                                                    §§push(_loc1_.m_angularVelocity);
                                                                                    if(!(_loc21_ && _loc2_))
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
                                                                                       if(!_loc21_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc22_ || _loc1_)
                                                                                          {
                                                                                             §§push(_loc15_.y);
                                                                                             if(_loc22_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      if(_loc22_ || this)
                                                                                                      {
                                                                                                         addr535:
                                                                                                         §§push(_loc18_);
                                                                                                         if(!(_loc21_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc15_.x);
                                                                                                            if(_loc22_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc21_)
                                                                                                                     {
                                                                                                                        addr561:
                                                                                                                        §§push(_loc15_.x);
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           addr565:
                                                                                                                           §§push(_loc17_.x);
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              addr569:
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(_loc22_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_.x);
                                                                                                                                             if(_loc22_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc22_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr606:
                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                   if(!(_loc21_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(_loc22_)
                                                                                                                                                      {
                                                                                                                                                         addr617:
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc21_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr628:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr631:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc21_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr639:
                                                                                                                                                                     §§push(_loc15_.y);
                                                                                                                                                                     if(_loc22_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_.y);
                                                                                                                                                                        if(_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           addr652:
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           if(_loc22_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!_loc21_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr676:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr679:
                                                                                                                                                                                       §§push(_loc16_.y);
                                                                                                                                                                                       if(!_loc22_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr692);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc22_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr686:
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr692);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr686);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr692);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr652);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr692);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr617);
                                                                                                                                                }
                                                                                                                                                addr692:
                                                                                                                                                §§push(§§pop() + (§§pop() + §§pop() * (§§pop() - §§pop() * _loc4_)));
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr698);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr679);
                                                                                                                                       }
                                                                                                                                       §§goto(addr628);
                                                                                                                                    }
                                                                                                                                    §§goto(addr676);
                                                                                                                                 }
                                                                                                                                 §§goto(addr652);
                                                                                                                              }
                                                                                                                              §§goto(addr679);
                                                                                                                           }
                                                                                                                           §§goto(addr631);
                                                                                                                        }
                                                                                                                        §§goto(addr639);
                                                                                                                     }
                                                                                                                     §§goto(addr698);
                                                                                                                  }
                                                                                                                  §§goto(addr639);
                                                                                                               }
                                                                                                               §§goto(addr606);
                                                                                                            }
                                                                                                            §§goto(addr652);
                                                                                                         }
                                                                                                         §§goto(addr569);
                                                                                                      }
                                                                                                      §§goto(addr565);
                                                                                                   }
                                                                                                   addr698:
                                                                                                   return Number(§§pop());
                                                                                                }
                                                                                                §§goto(addr565);
                                                                                             }
                                                                                             §§goto(addr679);
                                                                                          }
                                                                                          §§goto(addr639);
                                                                                       }
                                                                                       §§goto(addr535);
                                                                                    }
                                                                                    §§goto(addr561);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr387);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr367:
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc21_)
                                                      {
                                                         §§goto(addr386);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr367);
                                          }
                                          §§goto(addr303);
                                       }
                                    }
                                    §§goto(addr254);
                                 }
                                 §§goto(addr229);
                              }
                              _loc5_ = §§pop();
                              if(!(_loc21_ && _loc2_))
                              {
                                 addr173:
                                 §§push(_loc6_);
                                 if(_loc22_ || this)
                                 {
                                    §§goto(addr182);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr173);
               }
               §§goto(addr102);
            }
            §§goto(addr112);
         }
         §§goto(addr55);
      }
      
      public function §0§() : Boolean
      {
         return this.§3!§;
      }
      
      public function §+!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            this.§3!§ = param1;
            if(_loc3_ || _loc3_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
         if(_loc4_ || param2)
         {
            §-;§.SetAwake(true);
            loop0:
            do
            {
               §`x§.SetAwake(true);
               while(true)
               {
                  this.§%!I§ = param1;
                  while(_loc4_ || param1)
                  {
                     this.§^!b§ = param2;
                     if(_loc4_ || param2)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc4_ || param1));
            
         }
      }
      
      public function §1!L§() : Boolean
      {
         return this.§8!_§;
      }
      
      public function §4#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               while(_loc3_)
               {
                  this.§8!_§ = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr60:
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §#f§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §-;§.SetAwake(true);
         }
         while(true)
         {
            §`x§.SetAwake(true);
            while(!_loc2_)
            {
               this.§2"§ = param1;
               if(!_loc2_)
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
         if(!(_loc2_ && this))
         {
            §-;§.SetAwake(true);
            while(true)
            {
               §`x§.SetAwake(true);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            this.§&U§ = param1;
            if(_loc3_ || param1)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §>!P§() : Number
      {
         return this.§4k§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = true;
         var _loc8_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = §-;§;
         var _loc3_:b2Body = §`x§;
         var _loc4_:b2Vec2 = _loc2_.§4!h§;
         §§push(_loc2_.m_angularVelocity);
         if(!(_loc25_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§4!h§;
         §§push(_loc3_.m_angularVelocity);
         if(!(_loc25_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc25_)
         {
            §§push(this.§8!_§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc25_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr712:
                        addr713:
                        while(true)
                        {
                           §§push(this.§!!I§ == §;x§);
                           if(!(_loc25_ && _loc2_))
                           {
                              continue loop2;
                           }
                           addr616:
                           if(_loc25_ && param1)
                           {
                              continue loop1;
                           }
                           if(_loc25_)
                           {
                              continue loop0;
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§push(this.§8!"§.x);
                        if(!_loc25_)
                        {
                           addr718:
                           §§push(_loc6_.x);
                           if(_loc26_ || param1)
                           {
                              addr727:
                              §§push(_loc4_.x);
                              if(!(_loc25_ && param1))
                              {
                                 addr736:
                                 §§push(§§pop() - §§pop());
                                 if(_loc26_ || _loc2_)
                                 {
                                    addr744:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc25_)
                                    {
                                       addr747:
                                       §§push(this.§8!"§.y);
                                       if(_loc26_)
                                       {
                                          addr752:
                                          §§push(_loc6_.y);
                                          if(_loc26_)
                                          {
                                             addr758:
                                             §§push(§§pop() - _loc4_.y);
                                             if(!_loc25_)
                                             {
                                                addr761:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc25_)
                                                {
                                                   addr764:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc25_ && this))
                                                   {
                                                      §§push(this.m_s2);
                                                      if(_loc26_ || _loc2_)
                                                      {
                                                      }
                                                      addr797:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc26_)
                                                      {
                                                         addr800:
                                                         §§push(this.m_s1);
                                                         if(_loc26_ || _loc3_)
                                                         {
                                                            addr810:
                                                            §§push(§§pop() * _loc5_);
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                         if(_loc26_ || param1)
                                                         {
                                                            addr819:
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      §§push(_loc7_);
                                                      if(_loc26_ || param1)
                                                      {
                                                         §§push(§§pop() - _loc5_);
                                                         if(!_loc25_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc13_:* = §§pop();
                                                      if(_loc26_)
                                                      {
                                                         §§push(this.§3!§);
                                                         if(_loc26_ || _loc2_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc25_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc25_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc26_)
                                                                  {
                                                                     addr856:
                                                                     §§pop();
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(this.§!!I§ == §5!§);
                                                                        if(_loc26_ || param1)
                                                                        {
                                                                           addr871:
                                                                           §§push(!§§pop());
                                                                           if(!_loc26_)
                                                                           {
                                                                           }
                                                                           addr875:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc25_ && param1))
                                                                              {
                                                                                 addr883:
                                                                                 §§push(this.§@_§.x);
                                                                                 if(!(_loc25_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc6_.x);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(_loc4_.x);
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                addr907:
                                                                                                §§push(this.§@_§.y);
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc4_.y);
                                                                                                      if(!(_loc25_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            addr929:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc25_ && param1))
                                                                                                            {
                                                                                                               §§push(this.m_a2);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  addr941:
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     addr944:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc25_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(this.m_a1);
                                                                                                                           if(!(_loc25_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr966:
                                                                                                                              §§push(§§pop() - §§pop() * _loc5_);
                                                                                                                              if(_loc26_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr974:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr966);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr966);
                                                                                                            }
                                                                                                            _loc18_ = §§pop();
                                                                                                            _loc19_ = this.§;D§.Copy();
                                                                                                            _loc20_ = this.§^!3§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
                                                                                                            if(!_loc25_)
                                                                                                            {
                                                                                                               addr1173:
                                                                                                               this.§;D§.§!V§(_loc20_);
                                                                                                               addr1176:
                                                                                                               if(this.§!!I§ == §1p§)
                                                                                                               {
                                                                                                                  addr1151:
                                                                                                                  §§push(this.§;D§);
                                                                                                                  if(_loc26_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr1167:
                                                                                                                     §§pop().z = b2Math.§-!V§(this.§;D§.z,0);
                                                                                                                     addr1168:
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        addr1082:
                                                                                                                        addr1085:
                                                                                                                        addr1104:
                                                                                                                        addr1105:
                                                                                                                        addr1088:
                                                                                                                        addr1103:
                                                                                                                        addr1102:
                                                                                                                        addr1087:
                                                                                                                        addr1084:
                                                                                                                        §§push(-_loc12_);
                                                                                                                        §§push(this.§;D§.z);
                                                                                                                        §§push(_loc19_.z);
                                                                                                                        if(_loc26_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr1098:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           §§push(this.§^!3§.col3.x);
                                                                                                                        }
                                                                                                                        _loc21_ = §§pop() - §§pop() * §§pop();
                                                                                                                        if(!_loc25_)
                                                                                                                        {
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              §§push(_loc13_);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    addr1004:
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§;D§);
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().z);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc19_.z);
                                                                                                                                             if(_loc26_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc26_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§^!3§);
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().col3);
                                                                                                                                                               if(!_loc25_)
                                                                                                                                                               {
                                                                                                                                                                  addr1060:
                                                                                                                                                                  §§push(§§pop() * §§pop().y);
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1065:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1080:
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1082);
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc23_ = this.§^!3§.Solve22(new b2Vec2(),_loc21_,_loc22_);
                                                                                                                                                                                 if(!_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    §§push(_loc23_.x);
                                                                                                                                                                                    if(!(_loc25_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc19_.x);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    §§push(_loc23_.y);
                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc19_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr1679:
                                                                                                                                                                                    this.§;D§.x = _loc23_.x;
                                                                                                                                                                                    addr1680:
                                                                                                                                                                                    addr1706:
                                                                                                                                                                                    addr1691:
                                                                                                                                                                                    §§push(this.§;D§);
                                                                                                                                                                                    if(_loc26_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc23_.y);
                                                                                                                                                                                       if(_loc26_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          if(_loc26_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   §§push(this.§;D§.x);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - _loc19_.x);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   §§push(this.§;D§.y);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - _loc19_.y);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   §§push(this.§;D§.z);
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - _loc19_.z);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().z = §§pop();
                                                                                                                                                                                                   addr1605:
                                                                                                                                                                                                   addr1636:
                                                                                                                                                                                                   if(_loc26_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1592:
                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1584:
                                                                                                                                                                                                         §§push(Number(§§pop() * this.§8!"§.x + _loc20_.z * this.§@_§.x));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                      addr1593:
                                                                                                                                                                                                      §§push(_loc20_.x);
                                                                                                                                                                                                      if(_loc26_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§8!"§);
                                                                                                                                                                                                         if(_loc26_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1557:
                                                                                                                                                                                                            §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                            §§push(_loc20_.z);
                                                                                                                                                                                                            §§push(this.§@_§);
                                                                                                                                                                                                            if(_loc26_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1573:
                                                                                                                                                                                                               _loc9_ = §§pop() + §§pop() * §§pop().y;
                                                                                                                                                                                                               addr1572:
                                                                                                                                                                                                               addr1574:
                                                                                                                                                                                                               addr1571:
                                                                                                                                                                                                               addr1570:
                                                                                                                                                                                                               §§push(_loc20_.x * this.m_s1);
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1505:
                                                                                                                                                                                                                  §§push(§§pop() + _loc20_.y);
                                                                                                                                                                                                                  §§push(_loc20_.z);
                                                                                                                                                                                                                  §§push(this.m_a1);
                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc25_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1519:
                                                                                                                                                                                                                        _loc10_ = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                        addr1518:
                                                                                                                                                                                                                        if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1419:
                                                                                                                                                                                                                                 §§push(_loc20_.x);
                                                                                                                                                                                                                                 if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1428:
                                                                                                                                                                                                                                    §§push(this.m_s2);
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc20_.y);
                                                                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1456:
                                                                                                                                                                                                                                                      §§push(_loc20_.z);
                                                                                                                                                                                                                                                      if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc26_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.m_a2);
                                                                                                                                                                                                                                                               if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1482:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1485:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1488:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc11_ = §§pop();
                                                                                                                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                                                                                                                           §§push(_loc4_.x);
                                                                                                                                                                                                                                                                           if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §1!h§ * _loc8_);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                                                                           addr1491:
                                                                                                                                                                                                                                                                           if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                 §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                 if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §1!h§ * _loc9_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                                                                    if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1329:
                                                                                                                                                                                                                                                                                                §§push(§%k§ * _loc10_);
                                                                                                                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1353:
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr1361:
                                                                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                        if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §9!6§ * _loc8_);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1295:
                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1251:
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §9!6§ * _loc9_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§9!7§ * _loc11_);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1228:
                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(false)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1251);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr2028:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc2_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                              addr2082:
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                 addr2042:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc3_.§4!h§);
                                                                                                                                                                                                                                                                                                                                                                                 addr2086:
                                                                                                                                                                                                                                                                                                                                                                                 addr2042:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr2075:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2082);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr2086);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                                                                                                                                                                              addr2068:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2075);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1295);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2082);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1572);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1353);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1228);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1584);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1456);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1329);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1228);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1491);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr2042);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1593);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1361);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1605);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1572);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1419);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1488);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1353);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1505);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1428);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1482);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1518);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1519);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1485);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1353);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2042);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1574);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr2068);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1505);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1573);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1557);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1505);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1584);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1573);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1519);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1488);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1482);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1456);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1584);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1571);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1505);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1592);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1680);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1636);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr2082);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1584);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1570);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1519);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1584);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1573);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1624:
                                                                                                                                                                                                   §§goto(addr1624);
                                                                                                                                                                                                   addr1673:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1706);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1691);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2082);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1679);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1677:
                                                                                                                                                                                    §§goto(addr1677);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1673);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1082);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1085);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1104);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1105);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1098);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1088);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1103);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1060);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1102);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1060);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1087);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1084);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1065);
                                                                                                                              }
                                                                                                                              §§goto(addr1004);
                                                                                                                           }
                                                                                                                           addr1121:
                                                                                                                           §§push(this.§;D§);
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              §§push(b2Math.§]!#§(this.§;D§.z,0));
                                                                                                                              if(!(_loc25_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§pop().z = §§pop();
                                                                                                                                 addr1140:
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1082);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1151);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1168);
                                                                                                                              }
                                                                                                                              §§goto(addr1167);
                                                                                                                           }
                                                                                                                           §§goto(addr1151);
                                                                                                                        }
                                                                                                                        §§goto(addr1140);
                                                                                                                     }
                                                                                                                     §§goto(addr1176);
                                                                                                                  }
                                                                                                                  §§goto(addr1173);
                                                                                                               }
                                                                                                               §§push(this.§!!I§);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  if(§§pop() == §`7§)
                                                                                                                  {
                                                                                                                     §§goto(addr1121);
                                                                                                                  }
                                                                                                                  §§goto(addr1082);
                                                                                                               }
                                                                                                               §§goto(addr1173);
                                                                                                            }
                                                                                                            §§goto(addr1080);
                                                                                                         }
                                                                                                         §§goto(addr941);
                                                                                                      }
                                                                                                      §§goto(addr966);
                                                                                                   }
                                                                                                   §§goto(addr944);
                                                                                                }
                                                                                                §§goto(addr941);
                                                                                             }
                                                                                             §§goto(addr974);
                                                                                          }
                                                                                          §§goto(addr966);
                                                                                       }
                                                                                       §§goto(addr944);
                                                                                    }
                                                                                    §§goto(addr929);
                                                                                 }
                                                                                 §§goto(addr907);
                                                                              }
                                                                              §§goto(addr929);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc24_ = this.§^!3§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
                                                                              if(_loc26_)
                                                                              {
                                                                                 addr2026:
                                                                                 addr2015:
                                                                                 addr2013:
                                                                                 §§push(this.§;D§);
                                                                                 §§push(this.§;D§.x);
                                                                                 if(!(_loc25_ && param1))
                                                                                 {
                                                                                    addr2025:
                                                                                    §§push(§§pop() + _loc24_.x);
                                                                                 }
                                                                                 §§pop().x = §§pop();
                                                                                 addr2027:
                                                                                 §§push(this.§;D§);
                                                                                 if(_loc26_)
                                                                                 {
                                                                                    §§push(this.§;D§);
                                                                                    if(!_loc25_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             §§push(_loc24_.y);
                                                                                             if(!_loc25_)
                                                                                             {
                                                                                                addr2009:
                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                addr1988:
                                                                                                _loc8_ = Number(_loc24_.x * this.§8!"§.x);
                                                                                                addr1959:
                                                                                                addr1989:
                                                                                                addr1986:
                                                                                                addr2010:
                                                                                                addr1987:
                                                                                                addr1983:
                                                                                                §§push(_loc24_.x);
                                                                                                §§push(this.§8!"§);
                                                                                                if(_loc26_ || param1)
                                                                                                {
                                                                                                   addr1970:
                                                                                                   §§push(§§pop() * §§pop().y);
                                                                                                   if(_loc26_ || param1)
                                                                                                   {
                                                                                                      addr1978:
                                                                                                      _loc9_ = §§pop();
                                                                                                      addr1979:
                                                                                                      §§push(_loc24_.x);
                                                                                                      if(!_loc25_)
                                                                                                      {
                                                                                                         §§push(this.m_s1);
                                                                                                         if(_loc26_ || _loc2_)
                                                                                                         {
                                                                                                            addr1943:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc25_ && this))
                                                                                                            {
                                                                                                               addr1954:
                                                                                                               _loc10_ = §§pop() + _loc24_.y;
                                                                                                               addr1953:
                                                                                                               addr1952:
                                                                                                               addr1955:
                                                                                                               §§push(_loc24_.x);
                                                                                                               if(!(_loc25_ && this))
                                                                                                               {
                                                                                                                  §§push(this.m_s2);
                                                                                                                  if(!_loc25_)
                                                                                                                  {
                                                                                                                     if(!_loc25_)
                                                                                                                     {
                                                                                                                        addr1920:
                                                                                                                        §§push(§§pop() * §§pop() + _loc24_.y);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           addr1924:
                                                                                                                           _loc11_ = Number(§§pop());
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              §§push(_loc4_.x);
                                                                                                                              if(!(_loc25_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §1!h§ * _loc8_);
                                                                                                                              }
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              addr1898:
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 §§push(_loc4_.y);
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §1!h§ * _loc9_);
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 addr1880:
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!_loc25_)
                                                                                                                                 {
                                                                                                                                    if(_loc26_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc25_ && this))
                                                                                                                                          {
                                                                                                                                             if(!(_loc25_ && this))
                                                                                                                                             {
                                                                                                                                                addr1858:
                                                                                                                                                §§push(§%k§ * _loc10_);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr1861:
                                                                                                                                                   §§push(Number(§§pop() - §§pop()));
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      addr1865:
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §9!6§ * _loc8_);
                                                                                                                                                         }
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         addr1822:
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc25_)
                                                                                                                                                            {
                                                                                                                                                               addr1788:
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §9!6§ * _loc9_);
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                               if(!(_loc25_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(_loc26_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§9!7§ * _loc11_);
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc26_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1751:
                                                                                                                                                                                       if(_loc26_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1765:
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc26_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1788);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2028);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1979);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1865);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1822);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1788);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1924);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1959);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1943);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1953);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1861);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1765);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1952);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1920);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1858);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1861);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1751);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1989);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1955);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1898);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1880);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1924);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1978);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1986);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1970);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1953);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1920);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1861);
                                                                                                                                 addr1900:
                                                                                                                              }
                                                                                                                              §§goto(addr2010);
                                                                                                                           }
                                                                                                                           §§goto(addr2027);
                                                                                                                        }
                                                                                                                        §§goto(addr1954);
                                                                                                                     }
                                                                                                                     §§goto(addr1970);
                                                                                                                  }
                                                                                                                  §§goto(addr1920);
                                                                                                               }
                                                                                                               §§goto(addr1987);
                                                                                                            }
                                                                                                            §§goto(addr1983);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1954);
                                                                                                   }
                                                                                                   §§goto(addr1988);
                                                                                                }
                                                                                                addr1985:
                                                                                                §§goto(addr1985);
                                                                                             }
                                                                                             §§goto(addr2025);
                                                                                          }
                                                                                          §§goto(addr2026);
                                                                                       }
                                                                                       §§goto(addr2009);
                                                                                    }
                                                                                    §§goto(addr2015);
                                                                                 }
                                                                                 §§goto(addr2013);
                                                                              }
                                                                              §§goto(addr1900);
                                                                           }
                                                                        }
                                                                        §§goto(addr875);
                                                                     }
                                                                     §§goto(addr883);
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               §§goto(addr875);
                                                            }
                                                            §§goto(addr871);
                                                         }
                                                         §§goto(addr856);
                                                      }
                                                      §§goto(addr883);
                                                   }
                                                   §§goto(addr819);
                                                }
                                                §§push(_loc7_);
                                                if(_loc25_ && this)
                                                {
                                                }
                                                §§goto(addr810);
                                             }
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc25_ && this)
                                          {
                                          }
                                          §§goto(addr810);
                                       }
                                       §§goto(addr797);
                                    }
                                    §§goto(addr819);
                                 }
                                 §§goto(addr764);
                              }
                           }
                           §§goto(addr810);
                        }
                        §§goto(addr800);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr627);
                  }
               }
            }
         }
         §§goto(addr548);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc40_:Boolean = false;
         var _loc41_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc35_:* = NaN;
         var _loc36_:* = NaN;
         var _loc37_:* = NaN;
         var _loc38_:* = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = §-;§;
         var _loc5_:b2Body = §`x§;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         §§push(_loc4_.m_sweep.a);
         if(!_loc40_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         §§push(_loc5_.m_sweep.a);
         if(!_loc40_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(_loc41_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(!(_loc40_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         §§push(false);
         if(_loc41_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc18_:* = §§pop();
         §§push(0);
         if(!(_loc40_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc19_:* = §§pop();
         var _loc20_:b2Mat22 = b2Mat22.§[_§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§[_§(_loc9_);
         _loc10_ = _loc20_;
         §§push(this.m_localAnchor1.x);
         if(_loc41_)
         {
            §§push(§§pop() - §%y§.x);
            if(!_loc40_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc22_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(_loc41_)
         {
            §§push(§§pop() - §%y§.y);
            if(!(_loc40_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc23_:* = §§pop();
         if(!_loc40_)
         {
            §§push(_loc10_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc22_);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc41_)
                     {
                        §§push(_loc10_.col2);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr278:
                           while(true)
                           {
                              §§push(_loc23_);
                              addr279:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr280:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr281:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                           }
                           loop15:
                           while(true)
                           {
                              §§push(_loc10_.col2);
                              if(_loc40_ && param1)
                              {
                                 continue loop3;
                              }
                              §§push(§§pop().y);
                              if(!(_loc40_ && this))
                              {
                                 §§push(_loc23_);
                                 if(_loc41_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop11:
                                    while(!_loc40_)
                                    {
                                       if(_loc41_ || _loc3_)
                                       {
                                          if(!(_loc41_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() + §§pop());
                                          loop12:
                                          while(!_loc40_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop13:
                                             while(!(_loc40_ && _loc2_))
                                             {
                                                _loc23_ = §§pop();
                                                while(true)
                                                {
                                                   if(!(_loc40_ && param1))
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc40_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(!(_loc40_ && param1))
                                                      {
                                                         if(_loc40_ && _loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         if(!(_loc41_ || _loc2_))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc41_)
                                                         {
                                                            §§goto(addr184);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc11_ = §§pop();
                                                            §§goto(addr283);
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop13;
                                                      continue loop13;
                                                   }
                                                   addr283:
                                                   while(true)
                                                   {
                                                      addr194:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_.col1);
                                                         if(!_loc41_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         if(_loc41_)
                                                         {
                                                            §§push(_loc22_);
                                                            if(!_loc40_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               continue loop15;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr184:
                                                   _loc22_ = §§pop();
                                                   if(!(_loc41_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   while(false)
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   _loc10_ = _loc21_;
                                                   §§push(this.m_localAnchor2.x);
                                                   if(_loc41_)
                                                   {
                                                      §§push(§§pop() - §,V§.x);
                                                      if(_loc41_ || _loc2_)
                                                      {
                                                         addr303:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc24_:* = §§pop();
                                                      §§push(this.m_localAnchor2.y);
                                                      if(_loc41_)
                                                      {
                                                         §§push(§§pop() - §,V§.y);
                                                         if(!(_loc40_ && this))
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc25_:* = §§pop();
                                                      if(_loc41_)
                                                      {
                                                         §§push(_loc10_.col1);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc41_)
                                                            {
                                                               §§push(_loc24_);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_.col2);
                                                                     addr450:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc40_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc25_);
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc40_)
                                                                           {
                                                                              addr463:
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!(_loc40_ && this))
                                                                                 {
                                                                                    _loc11_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop17;
                                                                                       addr365:
                                                                                       if(_loc40_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             §§push(_loc8_.x);
                                                                                             if(_loc41_ || _loc2_)
                                                                                             {
                                                                                                addr482:
                                                                                                §§push(_loc24_);
                                                                                                if(!_loc40_)
                                                                                                {
                                                                                                   break loop20;
                                                                                                }
                                                                                                break loop21;
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr515:
                                                                                       var _loc26_:* = §§pop();
                                                                                       §§push(_loc8_.y);
                                                                                       if(_loc41_)
                                                                                       {
                                                                                          §§push(_loc25_);
                                                                                          if(!(_loc40_ && this))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc41_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(_loc41_)
                                                                                                {
                                                                                                   addr552:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc41_ || this)
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                   }
                                                                                                   var _loc27_:Number = §§pop();
                                                                                                   if(_loc41_ || param1)
                                                                                                   {
                                                                                                      §§push(this.§3!§);
                                                                                                      loop28:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop29:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§@_§ = b2Math.§]!§(_loc20_,this.§!-§);
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(_loc26_);
                                                                                                                  if(_loc41_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc22_);
                                                                                                                     if(_loc41_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc41_)
                                                                                                                        {
                                                                                                                           §§push(this.§@_§.y);
                                                                                                                           if(_loc41_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!(_loc40_ && this))
                                                                                                                              {
                                                                                                                                 §§push(_loc27_);
                                                                                                                                 if(_loc41_)
                                                                                                                                 {
                                                                                                                                    addr1121:
                                                                                                                                    §§push(_loc23_);
                                                                                                                                    if(_loc41_)
                                                                                                                                    {
                                                                                                                                       addr1136:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc40_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(this.§@_§.x);
                                                                                                                                       }
                                                                                                                                       §§pop().m_a1 = §§pop() - §§pop();
                                                                                                                                       loop31:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(_loc24_);
                                                                                                                                          if(_loc41_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§@_§.y);
                                                                                                                                             if(_loc41_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc40_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr1074:
                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                   if(_loc41_)
                                                                                                                                                   {
                                                                                                                                                      addr1081:
                                                                                                                                                      §§push(§§pop() - §§pop() * this.§@_§.x);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1081);
                                                                                                                                                }
                                                                                                                                                §§pop().m_a2 = §§pop();
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§@_§.x);
                                                                                                                                                   loop33:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                      if(_loc41_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         loop34:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§@_§.y);
                                                                                                                                                            if(_loc41_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc27_);
                                                                                                                                                            }
                                                                                                                                                            loop48:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc41_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               if(_loc40_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               loop49:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                  loop50:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc41_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        loop47:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr667:
                                                                                                                                                                           loop68:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              this.§8!"§ = b2Math.§]!§(_loc20_,this.§#g§);
                                                                                                                                                                              loop69:
                                                                                                                                                                              while(!_loc40_)
                                                                                                                                                                              {
                                                                                                                                                                                 loop70:
                                                                                                                                                                                 do
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(_loc26_);
                                                                                                                                                                                    if(!(_loc40_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                       if(_loc41_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc41_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§8!"§.y);
                                                                                                                                                                                             if(!(_loc40_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc41_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr649:
                                                                                                                                                                                                   §§push(_loc27_);
                                                                                                                                                                                                   if(_loc41_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr652:
                                                                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr662:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc41_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr658:
                                                                                                                                                                                                            §§push(this.§8!"§.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().m_s1 = §§pop() - §§pop();
                                                                                                                                                                                                         while(_loc41_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(_loc24_);
                                                                                                                                                                                                            if(_loc41_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§8!"§.y);
                                                                                                                                                                                                               if(_loc41_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr598:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!(_loc40_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * this.§8!"§.x);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().m_s2 = §§pop();
                                                                                                                                                                                                                  if(!_loc41_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr601:
                                                                                                                                                                                                                  if(_loc41_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop70;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr706:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop68;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr778:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc40_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc40_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc41_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop29;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(b2Math);
                                                                                                                                                                                                                              §§push(_loc35_);
                                                                                                                                                                                                                              if(!_loc40_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§^!b§);
                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr814:
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr814);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop().§3X§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                                                                                                                 break loop50;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr814);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop44:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr979:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(b2Math.§&!]§(_loc35_));
                                                                                                                                                                                                                                       addr987:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1026:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr902:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(true);
                                                                                                                                                                                                                              addr844:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc40_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1011:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2Math);
                                                                                                                                                                                                                                                §§push(_loc35_);
                                                                                                                                                                                                                                                §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                                                                                                                                if(!_loc40_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().§3X§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                                                                                                                                                addr1024:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                      §§goto(addr1026);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                          addr855:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr979);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr852:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr902:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                                                                           continue loop47;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                     §§goto(addr601);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr598);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr662);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr652);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr662);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr658);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr649);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(false);
                                                                                                                                                                                 
                                                                                                                                                                                 var _loc28_:b2Vec3 = new b2Vec3();
                                                                                                                                                                                 §§push(this.§8!"§.x);
                                                                                                                                                                                 if(!(_loc40_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc26_);
                                                                                                                                                                                    if(_loc41_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§8!"§.y);
                                                                                                                                                                                          if(_loc41_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1181:
                                                                                                                                                                                             §§push(§§pop() * _loc27_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc41_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1187:
                                                                                                                                                                                             var _loc29_:Number = §§pop();
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(!(_loc40_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                if(!_loc40_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1213:
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc41_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§^?§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   var _loc30_:* = §§pop();
                                                                                                                                                                                                   if(_loc41_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr2177:
                                                                                                                                                                                                      _loc16_ = Number(b2Math.§-!V§(_loc16_,b2Math.§&!]§(_loc29_)));
                                                                                                                                                                                                      addr2166:
                                                                                                                                                                                                      _loc17_ = Number(b2Math.§&!]§(_loc30_));
                                                                                                                                                                                                      addr2167:
                                                                                                                                                                                                      addr2178:
                                                                                                                                                                                                      addr2165:
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr2146:
                                                                                                                                                                                                         §§push(Number(§1!h§));
                                                                                                                                                                                                         if(!(_loc40_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                            addr2157:
                                                                                                                                                                                                            if(_loc41_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr2141:
                                                                                                                                                                                                               _loc13_ = §9!6§;
                                                                                                                                                                                                               §§push(Number(§%k§));
                                                                                                                                                                                                               if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                  addr2122:
                                                                                                                                                                                                                  _loc15_ = Number(§9!7§);
                                                                                                                                                                                                                  addr2136:
                                                                                                                                                                                                                  addr2123:
                                                                                                                                                                                                                  §§push(this.§^!3§.col1);
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                  if(!(_loc40_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr2079:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                     §§push(this.m_s1);
                                                                                                                                                                                                                     if(_loc41_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!(_loc40_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr2115:
                                                                                                                                                                                                                           addr2101:
                                                                                                                                                                                                                           addr2099:
                                                                                                                                                                                                                           addr2116:
                                                                                                                                                                                                                           addr2100:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * this.m_s1);
                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                           if(!(_loc40_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr2114:
                                                                                                                                                                                                                              §§push(§§pop() * this.m_s2 * this.m_s2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                           addr2117:
                                                                                                                                                                                                                           §§push(this.§^!3§);
                                                                                                                                                                                                                           if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr2020:
                                                                                                                                                                                                                              §§push(§§pop().col1);
                                                                                                                                                                                                                              if(!_loc40_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr2038:
                                                                                                                                                                                                                                       §§push(§§pop() * this.m_s1);
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       §§push(this.m_s2);
                                                                                                                                                                                                                                       if(!(_loc40_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr2048:
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                addr2057:
                                                                                                                                                                                                                                                if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1920:
                                                                                                                                                                                                                                                   §§push(this.§^!3§);
                                                                                                                                                                                                                                                   if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1928:
                                                                                                                                                                                                                                                      §§push(§§pop().col1);
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      if(_loc41_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc40_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc41_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.m_s1);
                                                                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc41_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!_loc40_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.m_a1);
                                                                                                                                                                                                                                                                           if(_loc41_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1960:
                                                                                                                                                                                                                                                                              if(_loc41_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1963:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                 if(!_loc40_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1966:
                                                                                                                                                                                                                                                                                    §§push(this.m_s2);
                                                                                                                                                                                                                                                                                    if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1987:
                                                                                                                                                                                                                                                                                             §§push(this.m_a2);
                                                                                                                                                                                                                                                                                             if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1995:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr2003:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   if(!_loc40_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§pop().z = §§pop();
                                                                                                                                                                                                                                                                                                      addr2006:
                                                                                                                                                                                                                                                                                                      if(!_loc40_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1915:
                                                                                                                                                                                                                                                                                                         this.§^!3§.col2.x = this.§^!3§.col1.y;
                                                                                                                                                                                                                                                                                                         addr1898:
                                                                                                                                                                                                                                                                                                         addr1893:
                                                                                                                                                                                                                                                                                                         addr1892:
                                                                                                                                                                                                                                                                                                         §§push(this.§^!3§.col2);
                                                                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1897:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + _loc15_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                         addr1916:
                                                                                                                                                                                                                                                                                                         addr1910:
                                                                                                                                                                                                                                                                                                         addr1911:
                                                                                                                                                                                                                                                                                                         if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1846:
                                                                                                                                                                                                                                                                                                            §§push(this.§^!3§.col2);
                                                                                                                                                                                                                                                                                                            if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1876:
                                                                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                                                                               if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr1863:
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * this.m_a1);
                                                                                                                                                                                                                                                                                                                  if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1874:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + _loc15_ * this.m_a2);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc40_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§pop().z = §§pop();
                                                                                                                                                                                                                                                                                                                  addr1879:
                                                                                                                                                                                                                                                                                                                  if(_loc41_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1840:
                                                                                                                                                                                                                                                                                                                        this.§^!3§.col3.x = this.§^!3§.col1.z;
                                                                                                                                                                                                                                                                                                                        addr1835:
                                                                                                                                                                                                                                                                                                                        addr1841:
                                                                                                                                                                                                                                                                                                                        addr1838:
                                                                                                                                                                                                                                                                                                                        addr1836:
                                                                                                                                                                                                                                                                                                                        §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                        if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1810:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().col3);
                                                                                                                                                                                                                                                                                                                           if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                              if(_loc41_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1823:
                                                                                                                                                                                                                                                                                                                                 §§pop().y = §§pop().col2.z;
                                                                                                                                                                                                                                                                                                                                 if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr1711:
                                                                                                                                                                                                                                                                                                                                    §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop().col3);
                                                                                                                                                                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                          if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                                             if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                      if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                                         if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                            if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(this.m_a1);
                                                                                                                                                                                                                                                                                                                                                               if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1772:
                                                                                                                                                                                                                                                                                                                                                                        if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr1782:
                                                                                                                                                                                                                                                                                                                                                                              §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                                                                              if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr1793:
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().z = §§pop() + §§pop() * this.m_a2;
                                                                                                                                                                                                                                                                                                                                                                                    addr1792:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1671:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc28_);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc29_);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc30_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(-§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                             addr1698:
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc40_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2136);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr2219:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr2228:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§8!"§.x);
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      addr2238:
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr2241:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc28_.z);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr2250:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * this.§@_§.x);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr2257:
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         var _loc31_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(this.§8!"§.y);
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc28_.z);
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     addr2294:
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * this.§@_§.y);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     var _loc32_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.m_s1);
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr2329:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc28_.z);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2344:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * this.m_a1);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2347:
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2344);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 var _loc33_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc28_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc28_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2398:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2377:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc28_.z);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * this.m_a2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             var _loc34_:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §1!h§ * _loc31_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - §1!h§ * _loc32_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2593:
                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc7_ -= §%k§ * _loc33_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2591:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2641:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2587:
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2592:
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_.x);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §9!6§ * _loc31_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc8_.y);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §9!6§ * _loc32_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2584:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2571:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      addr2542:
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §9!7§ * _loc34_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2545:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                               _loc9_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr2518:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               _loc4_.m_sweep.a = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr2519:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr2517:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc5_.m_sweep);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§pop().a = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           addr2511:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              _loc4_.§"!_§();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              addr2494:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 _loc5_.§"!_§();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 addr2485:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2444:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2449:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2452:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop() <= §§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Boolean(§§pop() <= §§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2463:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§push(b2Settings.b2_angularSlop);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc40_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr2452);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2439);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr2452);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2463);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr2439);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2591);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2449);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2444);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2641);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2519);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2485);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2439:
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             return Boolean(§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2542);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2591);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr2494);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr2511);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2584);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr2518);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2517);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr2571);
                                                                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                                                                               addr2558:
                                                                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2558);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2587);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2592);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2593);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2545);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2629:
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2629);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr2584);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2398);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr2377);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr2344);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2347);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr2329);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr2347);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2294);
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2294);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2257);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2250);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2241);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1879);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1835);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2006);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1841);
                                                                                                                                                                                                                                                                                                                                                                                    addr1792:
                                                                                                                                                                                                                                                                                                                                                                                    addr1791:
                                                                                                                                                                                                                                                                                                                                                                                    addr1789:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1792);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1791);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1792);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1840);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1793);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1793);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1789);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1793);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1782);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1823);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1772);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1793);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1772);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1810);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1840);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1916);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1838);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1836);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1910);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr2157);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2117);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1898);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1911);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2167);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr2057);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2079);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2048);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr2114);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1995);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2038);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1987);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2114);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1966);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr2003);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr2115);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1960);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2136);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr2038);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2048);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1963);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2115);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr2123);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2101);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2099);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2114);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr2116);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2048);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2136);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2114);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr2100);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr2141);
                                                                                                                                                                                                               addr2142:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2178);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2165);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1666:
                                                                                                                                                                                                      _loc12_ = Number(§1!h§);
                                                                                                                                                                                                      addr1654:
                                                                                                                                                                                                      _loc13_ = §9!6§;
                                                                                                                                                                                                      addr1667:
                                                                                                                                                                                                      addr2176:
                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1648:
                                                                                                                                                                                                            _loc14_ = Number(§%k§);
                                                                                                                                                                                                            addr1649:
                                                                                                                                                                                                            §§push(Number(§9!7§));
                                                                                                                                                                                                            if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                               addr1639:
                                                                                                                                                                                                               if(!_loc40_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                                                                     if(_loc41_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                        if(_loc41_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc41_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1557:
                                                                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                                                                              §§push(this.m_s1);
                                                                                                                                                                                                                              if(!(_loc40_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.m_s1);
                                                                                                                                                                                                                                    if(!(_loc40_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1580:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1586:
                                                                                                                                                                                                                                          §§push(§§pop() * this.m_s2);
                                                                                                                                                                                                                                          §§push(this.m_s2);
                                                                                                                                                                                                                                          if(_loc41_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc41_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1598:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc41_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc41_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(!_loc40_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1616:
                                                                                                                                                                                                                                                         if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc36_ = §§pop();
                                                                                                                                                                                                                                                            addr1624:
                                                                                                                                                                                                                                                            if(_loc41_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                               if(_loc41_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.m_s1);
                                                                                                                                                                                                                                                                     if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc41_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!_loc40_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                                                                              if(!_loc40_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.m_s2);
                                                                                                                                                                                                                                                                                 if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1502:
                                                                                                                                                                                                                                                                                          if(_loc41_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1510:
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             if(_loc41_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                if(_loc41_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc37_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr1523:
                                                                                                                                                                                                                                                                                                      if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                                                                                                                         if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc41_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc40_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        if(_loc41_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           if(!_loc40_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc41_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc41_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc38_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr1445:
                                                                                                                                                                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr1296:
                                                                                                                                                                                                                                                                                                                                                §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop().col1);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§push(_loc36_);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc37_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc40_ && param1))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§pop().Set(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                          addr1383:
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc41_ || this)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§^!3§);
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc40_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop().col2);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc37_);
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc38_);
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc41_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc41_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().Set(§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc40_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                addr2181:
                                                                                                                                                                                                                                                                                                                                                                                                                                                _loc39_ = this.§^!3§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if(_loc41_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                   _loc28_.x = _loc39_.x;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2208:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   _loc28_.y = _loc39_.y;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   _loc28_.z = 0;
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2218:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                         addr2206:
                                                                                                                                                                                                                                                                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr2208);
                                                                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr2219);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2218);
                                                                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                                                                   addr2213:
                                                                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr2213);
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2206);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1667);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1383);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1874);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1897);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1863);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1874);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1915);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1876);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1893);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1846);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1892);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1711);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr2181);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1667);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1624);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1523);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1987);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2079);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr2115);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2038);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1995);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1963);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr2003);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr2020);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1928);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1920);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1846);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1671);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2181);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2146);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1915);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2146);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1654);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1648);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr2228);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr2257);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1586);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr2238);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1666);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1510);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr2241);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1698);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr2122);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr2241);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1580);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr2238);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1586);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2250);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2238);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1510);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1557);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1502);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr2177);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2241);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1639);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr2141);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2257);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr2176);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1616);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2238);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr2250);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr2238);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1586);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr2241);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1586);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr2241);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1598);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr2241);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1793);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1649);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr2166);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr2142);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1823);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1648);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc41_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1213);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1187);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1187);
                                                                                                                                                                              }
                                                                                                                                                                              loop51:
                                                                                                                                                                              while(!(_loc40_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc41_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc41_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                       if(!_loc40_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc41_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc41_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop28;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr844);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr852);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       loop64:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc41_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Math);
                                                                                                                                                                                             §§push(_loc35_);
                                                                                                                                                                                             if(!_loc40_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§%!I§);
                                                                                                                                                                                                if(!_loc40_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc40_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr934:
                                                                                                                                                                                                      §§push(b2Settings.b2_linearSlop);
                                                                                                                                                                                                      if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr945:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                                                                                                         if(!_loc41_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr951:
                                                                                                                                                                                                         §§push(§§pop().§3X§(§§pop(),§§pop(),0));
                                                                                                                                                                                                         if(!(_loc40_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc41_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop62:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§%!I§);
                                                                                                                                                                                                                        if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc40_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc35_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 addr884:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc40_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc40_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       while(_loc41_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                                                                          §§goto(addr902);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          break loop64;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1048:
                                                                                                                                                                                                                                       addr899:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr987);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr883:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr988);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr884);
                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr976:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1024);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr968:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr968);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr951);
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr945);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr934);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1050:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Math);
                                                                                                                                                                                             §§push(this.§^!b§);
                                                                                                                                                                                             if(_loc41_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - this.§%!I§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop().§&!]§(§§pop()));
                                                                                                                                                                                             if(!_loc40_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(2 * b2Settings.b2_linearSlop);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc35_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§%!I§);
                                                                                                                                                                                                         addr909:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop64;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc35_);
                                                                                                                                                                                                            if(_loc40_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc40_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§^!b§);
                                                                                                                                                                                                            while(_loc41_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop68;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr778);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1048);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1011);
                                                                                                                                                                                                   addr721:
                                                                                                                                                                                                   if(_loc40_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc41_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr731:
                                                                                                                                                                                                      if(_loc41_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc40_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr736:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!_loc41_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop49;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc41_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc40_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               continue loop51;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr899);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1025);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr884);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr736);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc35_ = §§pop();
                                                                                                                                                                                          §§goto(addr1050);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1025);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr976);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1047);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1081);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1074);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1136);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1136);
                                                                                                                     }
                                                                                                                     §§goto(addr1121);
                                                                                                                  }
                                                                                                                  §§goto(addr1136);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr667);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr902);
                                                                                                }
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!(_loc40_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr552);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr552);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr488:
                                                                                    §§push(_loc6_.x);
                                                                                    if(_loc41_ || param1)
                                                                                    {
                                                                                       break loop21;
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc40_ && param1))
                                                                                    {
                                                                                       addr514:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr515);
                                                                                 }
                                                                              }
                                                                              addr463:
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           addr414:
                                                                           break;
                                                                           if(_loc40_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc25_);
                                                                           if(!_loc40_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc40_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc41_ || _loc3_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc41_ || this))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       _loc25_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          if(_loc40_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop25;
                                                                                          addr357:
                                                                                          _loc24_ = §§pop();
                                                                                          if(_loc40_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    §§goto(addr488);
                                                                                 }
                                                                                 §§goto(addr482);
                                                                              }
                                                                              break loop20;
                                                                           }
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc40_ && this))
                                                                        {
                                                                           addr505:
                                                                           §§goto(addr488);
                                                                           §§push(_loc22_);
                                                                        }
                                                                        §§goto(addr514);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc41_)
                                                                     {
                                                                        §§goto(addr488);
                                                                     }
                                                                     §§goto(addr515);
                                                                  }
                                                                  addr395:
                                                                  if(!(_loc41_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc41_ || _loc2_)
                                                                  {
                                                                     §§push(_loc10_.col2);
                                                                     if(!_loc40_)
                                                                     {
                                                                        §§goto(addr414);
                                                                     }
                                                                     §§goto(addr450);
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   §§goto(addr303);
                                                }
                                                continue loop15;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr281);
                                       }
                                       else
                                       {
                                          §§goto(addr278);
                                       }
                                    }
                                    §§goto(addr280);
                                    addr232:
                                 }
                                 §§goto(addr279);
                              }
                              §§goto(addr232);
                           }
                        }
                     }
                     §§goto(addr282);
                  }
               }
            }
         }
         §§goto(addr192);
      }
   }
}
