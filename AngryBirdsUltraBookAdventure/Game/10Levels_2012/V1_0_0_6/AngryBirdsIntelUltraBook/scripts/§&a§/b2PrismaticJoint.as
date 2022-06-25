package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Mat33;
   import §;%§.b2Math;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   import §;%§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §!1§:b2Vec2;
      
      private var §&b§:b2Vec2;
      
      private var §^<§:Number;
      
      private var §<!^§:b2Vec2;
      
      private var §9?§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §%!m§:b2Mat33;
      
      private var §<<§:b2Vec3;
      
      private var §&!w§:Number;
      
      private var §1!'§:Number;
      
      private var §;!a§:Number;
      
      private var §>![§:Number;
      
      private var §1!W§:Number;
      
      private var §0i§:Number;
      
      private var §;!m§:Boolean;
      
      private var §2'§:Boolean;
      
      private var §"!"§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc2_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!1§ = new b2Vec2();
                  while(true)
                  {
                     this.§&b§ = new b2Vec2();
                     while(true)
                     {
                        this.§<!^§ = new b2Vec2();
                        while(!_loc5_)
                        {
                           this.§9?§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§%!m§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§<<§ = new b2Vec3();
                                 loop7:
                                 while(true)
                                 {
                                    super(param1);
                                    loop8:
                                    for(; !_loc5_; if(_loc6_ || _loc2_)
                                    {
                                       return;
                                       addr61:
                                    })
                                    {
                                       this.m_localAnchor1.SetV(param1.§4!%§);
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§=!I§);
                                          while(_loc6_)
                                          {
                                             this.§!1§.SetV(param1.§"! §);
                                             continue loop7;
                                             if(!(_loc5_ && this))
                                             {
                                                continue loop8;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                           this.§;!a§ = param1.§class§;
                           §§goto(addr168);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            §§push(this.§<<§.x);
            if(_loc3_)
            {
               §§push(this.§9?§.x);
               if(!_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     §§push(this.§1!'§);
                     if(!_loc2_)
                     {
                        §§push(this.§<<§.z);
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc3_)
                           {
                              addr66:
                              §§push(this.§<!^§.x);
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc3_)
                                 {
                                    addr74:
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_)
                                    {
                                       addr77:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          addr81:
                                          §§push(this.§<<§.x);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr91:
                                             §§push(this.§9?§.y);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   addr109:
                                                   §§push(this.§1!'§);
                                                   if(!_loc2_)
                                                   {
                                                      addr113:
                                                      §§push(this.§<<§.z);
                                                      if(_loc3_ || this)
                                                      {
                                                         §§goto(addr130);
                                                      }
                                                      addr130:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc2_)
                                                      {
                                                         addr126:
                                                         §§push(this.§<!^§.y);
                                                      }
                                                      return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr109);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr81);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr77);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            return §§pop() * this.§<<§.y;
         }
      }
      
      public function §null §() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || _loc1_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && _loc2_))
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(!(_loc11_ && _loc1_))
            {
               §§push(§§pop() - _loc4_.y);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§4!1§(this.§!1§)).x);
            if(_loc10_)
            {
               §§push(_loc6_);
               if(!(_loc11_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc11_)
                  {
                     §§push(_loc8_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(!_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc10_ || _loc1_)
                           {
                           }
                        }
                     }
                     §§goto(addr138);
                  }
                  addr138:
                  return §§pop();
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr138);
         }
         §§goto(addr66);
      }
      
      public function §#!d§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::>0;
         var _loc2_:b2Body = b2internal::[=;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_ || _loc1_)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(_loc21_ || this)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(!_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || _loc3_)
            {
               §§push(_loc4_);
               if(_loc21_ || _loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_)
                  {
                     addr89:
                     §§push(_loc3_.col2.x);
                     if(!(_loc22_ && _loc2_))
                     {
                        addr101:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(_loc21_ || this)
                        {
                           addr109:
                           §§push(Number(§§pop()));
                        }
                        var _loc6_:* = §§pop();
                        if(!_loc22_)
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc21_)
                           {
                              §§push(_loc4_);
                              if(!(_loc22_ && this))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc21_)
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(!_loc22_)
                                    {
                                       addr136:
                                       §§push(§§pop() + §§pop() * _loc5_);
                                       if(_loc21_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc22_)
                                          {
                                             addr147:
                                             _loc5_ = §§pop();
                                             addr160:
                                             if(_loc21_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc21_ || _loc1_)
                                                {
                                                   addr158:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!(_loc22_ && _loc1_))
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
                                                   addr206:
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
                                                               addr324:
                                                               addr241:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                               }
                                                               if(!(_loc21_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr248:
                                                               _loc7_ = §§pop();
                                                               if(!(_loc22_ && _loc3_))
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col1);
                                                                              if(!_loc21_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    if(_loc21_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.col2);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc21_ || _loc3_)
                                                                                             {
                                                                                                addr325:
                                                                                                while(_loc21_ || _loc2_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         break loop11;
                                                                                                         addr303:
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(_loc21_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            _loc8_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc22_ && this)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                               §§goto(addr248);
                                                                                                            }
                                                                                                            addr314:
                                                                                                         }
                                                                                                         var _loc9_:* = §§pop();
                                                                                                         §§push(_loc1_.m_sweep.c.y);
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc5_);
                                                                                                            if(!(_loc22_ && _loc1_))
                                                                                                            {
                                                                                                               addr375:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc10_:* = §§pop();
                                                                                                            §§push(_loc2_.m_sweep.c.x);
                                                                                                            if(!(_loc22_ && this))
                                                                                                            {
                                                                                                               §§push(§§pop() + _loc7_);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  addr397:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               var _loc11_:* = §§pop();
                                                                                                               §§push(_loc2_.m_sweep.c.y);
                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc8_);
                                                                                                                  if(_loc21_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr419:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  var _loc12_:* = §§pop();
                                                                                                                  §§push(_loc11_);
                                                                                                                  if(_loc21_ || this)
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
                                                                                                                        if(!(_loc22_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc14_:* = §§pop();
                                                                                                                     var _loc15_:b2Vec2 = _loc1_.§4!1§(this.§!1§);
                                                                                                                     var _loc16_:b2Vec2 = _loc1_.§%!V§;
                                                                                                                     var _loc17_:b2Vec2 = _loc2_.§%!V§;
                                                                                                                     §§push(_loc1_.m_angularVelocity);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc18_:* = §§pop();
                                                                                                                     §§push(_loc2_.m_angularVelocity);
                                                                                                                     if(!_loc22_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc19_:* = §§pop();
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(!(_loc22_ && _loc1_))
                                                                                                                     {
                                                                                                                        §§push(_loc18_);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(-§§pop());
                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc15_.y);
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc21_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(!(_loc22_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(!(_loc22_ && this))
                                                                                                                                          {
                                                                                                                                             addr525:
                                                                                                                                             §§push(_loc15_.x);
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc21_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc22_)
                                                                                                                                                   {
                                                                                                                                                      addr540:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(!(_loc22_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_.x);
                                                                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc17_.x);
                                                                                                                                                            if(!(_loc22_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(!(_loc22_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           addr583:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc16_.x);
                                                                                                                                                                              if(!(_loc22_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr595:
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(!(_loc22_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr603:
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    if(!_loc22_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr606:
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(_loc21_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr614:
                                                                                                                                                                                          §§push(_loc5_);
                                                                                                                                                                                          if(!(_loc22_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!_loc22_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(_loc21_ || _loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr633:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc22_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr641:
                                                                                                                                                                                                      §§push(_loc15_.y);
                                                                                                                                                                                                      if(_loc22_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr710:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr718:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc22_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr728:
                                                                                                                                                                                                            return Number(§§pop());
                                                                                                                                                                                                            addr727:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr727);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr728);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr718);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc17_.y);
                                                                                                                                                                                                if(!_loc22_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr654:
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(!(_loc22_ && _loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                      if(!_loc22_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc22_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_.y);
                                                                                                                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr685:
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                  if(_loc21_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr709:
                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr710);
                                                                                                                                                                                                                     §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr709);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr685);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr709);
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr709);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr654);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr685);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr654);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr614);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr710);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr606);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr633);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr595);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr709);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr583);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr709);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr710);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr728);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr718);
                                                                                                                                                }
                                                                                                                                                §§goto(addr710);
                                                                                                                                             }
                                                                                                                                             §§goto(addr606);
                                                                                                                                          }
                                                                                                                                          §§goto(addr603);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr728);
                                                                                                                                 }
                                                                                                                                 §§goto(addr718);
                                                                                                                              }
                                                                                                                              §§goto(addr525);
                                                                                                                           }
                                                                                                                           §§goto(addr540);
                                                                                                                        }
                                                                                                                        §§goto(addr641);
                                                                                                                     }
                                                                                                                     §§goto(addr728);
                                                                                                                  }
                                                                                                                  §§goto(addr433);
                                                                                                               }
                                                                                                               §§goto(addr419);
                                                                                                            }
                                                                                                            §§goto(addr397);
                                                                                                         }
                                                                                                         §§goto(addr375);
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   addr326:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      break loop10;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr326);
                                                                                                }
                                                                                                addr325:
                                                                                                addr289:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                          §§goto(addr325);
                                                                                       }
                                                                                       addr340:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          break loop15;
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                       addr277:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr328);
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        §§push(_loc1_.m_sweep.c.x);
                                                                        if(!_loc22_)
                                                                        {
                                                                           §§goto(addr339);
                                                                        }
                                                                        break;
                                                                        §§goto(addr339);
                                                                     }
                                                                     §§goto(addr349);
                                                                     §§push(Number(§§pop()));
                                                                     addr258:
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                   }
                                                }
                                                §§goto(addr258);
                                             }
                                             §§goto(addr206);
                                          }
                                          _loc4_ = §§pop();
                                          §§goto(addr160);
                                       }
                                    }
                                    §§goto(addr136);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr136);
                           }
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr109);
               }
               §§goto(addr101);
            }
            §§goto(addr89);
         }
         §§goto(addr47);
      }
      
      public function §=P§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function §5!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§;!m§ = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §-J§() : Number
      {
         return this.§;!a§;
      }
      
      public function § !'§() : Number
      {
         return this.§>![§;
      }
      
      public function §1!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               loop1:
               while(_loc3_ || param2)
               {
                  while(true)
                  {
                     this.§;!a§ = param1;
                     do
                     {
                        this.§>![§ = param2;
                     }
                     while(_loc4_ && param2);
                     
                     if(!(_loc4_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      public function §[!k§() : Boolean
      {
         return this.§2'§;
      }
      
      public function §5!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::>0.SetAwake(true);
            do
            {
               b2internal::[=.SetAwake(true);
               do
               {
                  this.§2'§ = param1;
               }
               while(!_loc2_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function §4!K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            b2internal::>0.SetAwake(true);
         }
         do
         {
            b2internal::[=.SetAwake(true);
            do
            {
               this.§0i§ = param1;
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §@!+§() : Number
      {
         return this.§0i§;
      }
      
      public function §'!k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::>0.SetAwake(true);
            while(true)
            {
               b2internal::[=.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§1!W§ = param1;
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
         §§goto(addr46);
      }
      
      public function §;!<§() : Number
      {
         return this.§1!'§;
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
         var _loc25_:Boolean = true;
         var _loc26_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::>0;
         var _loc3_:b2Body = b2internal::[=;
         var _loc4_:b2Vec2 = _loc2_.§%!V§;
         §§push(_loc2_.m_angularVelocity);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§%!V§;
         §§push(_loc3_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc26_ && _loc3_))
         {
            §§push(this.§2'§);
            if(!(_loc26_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc26_ && this))
               {
                  addr650:
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§"!"§ == b2internal::`C);
                           if(!_loc26_)
                           {
                              if(!_loc25_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§<!^§.x);
                                    while(true)
                                    {
                                       §§push(_loc6_.x);
                                       if(_loc25_)
                                       {
                                          §§push(_loc4_.x);
                                          if(!(_loc26_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(true)
                                                {
                                                   §§push(this.§<!^§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.y);
                                                         if(_loc25_)
                                                         {
                                                            §§push(_loc4_.y);
                                                            if(!(_loc26_ && this))
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc26_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc26_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc26_)
                                                                     {
                                                                        §§push(this.m_a2);
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!(_loc26_ && param1))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_a1);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc26_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop14:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc14_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§&!w§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§0i§);
                                                                                                         if(!(_loc26_ && this))
                                                                                                         {
                                                                                                            §§push(_loc14_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  §§push(_loc4_.x);
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                  }
                                                                                                                  addr725:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr725:
                                                                                                                  addr668:
                                                                                                               }
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                                  if(!(_loc26_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr733:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr741:
                                                                                                                        §§push(this.m_s1);
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           addr746:
                                                                                                                           §§push(§§pop() * _loc5_);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     var _loc12_:* = §§pop();
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc5_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     var _loc13_:* = §§pop();
                                                                                                                     if(_loc25_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(this.§;!m§);
                                                                                                                        if(_loc25_ || this)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                 {
                                                                                                                                    addr789:
                                                                                                                                    §§pop();
                                                                                                                                    if(!(_loc26_ && this))
                                                                                                                                    {
                                                                                                                                       addr797:
                                                                                                                                       §§push(this.§"!"§ == b2internal::#!?);
                                                                                                                                       if(!(_loc26_ && this))
                                                                                                                                       {
                                                                                                                                          addr809:
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             if(!(_loc26_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(this.§<!^§.x);
                                                                                                                                                if(!(_loc26_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(_loc25_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_.x);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!(_loc26_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§<!^§.y);
                                                                                                                                                               if(_loc25_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr861:
                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                  if(_loc25_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - _loc4_.y);
                                                                                                                                                                     if(_loc26_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr898:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr906:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr915:
                                                                                                                                                                           addr909:
                                                                                                                                                                           §§push(this.m_a1);
                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              addr913:
                                                                                                                                                                              §§push(§§pop() * _loc5_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc25_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr923:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           _loc19_ = this.§<<§.Copy();
                                                                                                                                                                           _loc20_ = this.§%!m§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
                                                                                                                                                                           if(_loc25_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1148:
                                                                                                                                                                              this.§<<§.§'!<§(_loc20_);
                                                                                                                                                                              addr1150:
                                                                                                                                                                              if(this.§"!"§ == b2internal::'`)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc25_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1142:
                                                                                                                                                                                    this.§<<§.z = b2Math.§!!X§(this.§<<§.z,0);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1143:
                                                                                                                                                                                 if(_loc25_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1053:
                                                                                                                                                                                    addr1071:
                                                                                                                                                                                    addr1058:
                                                                                                                                                                                    addr1069:
                                                                                                                                                                                    addr1063:
                                                                                                                                                                                    addr1068:
                                                                                                                                                                                    addr1067:
                                                                                                                                                                                    addr1066:
                                                                                                                                                                                    addr1061:
                                                                                                                                                                                    addr1064:
                                                                                                                                                                                    addr1060:
                                                                                                                                                                                    addr1070:
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc21_ = §§pop() - (this.§<<§.z - _loc19_.z) * this.§%!m§.col3.x;
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(_loc25_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§<<§);
                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().z);
                                                                                                                                                                                                   if(!(_loc26_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc19_.z);
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc25_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§%!m§);
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().col3);
                                                                                                                                                                                                                     if(_loc25_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1021:
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc25_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1026:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(_loc25_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1041:
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1044:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc22_ = §§pop();
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1053);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc23_ = this.§%!m§.Solve22(new b2Vec2(),_loc21_,_loc22_);
                                                                                                                                                                                                                                                §§push(_loc23_);
                                                                                                                                                                                                                                                §§push(_loc23_.x);
                                                                                                                                                                                                                                                if(!(_loc26_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + _loc19_.x);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc23_);
                                                                                                                                                                                                                                                   §§push(_loc23_.y);
                                                                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + _loc19_.y);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr1659:
                                                                                                                                                                                                                                                   this.§<<§.x = _loc23_.x;
                                                                                                                                                                                                                                                   addr1660:
                                                                                                                                                                                                                                                   addr1675:
                                                                                                                                                                                                                                                   §§push(this.§<<§);
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc23_.y);
                                                                                                                                                                                                                                                      if(_loc25_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         §§push(this.§<<§.x);
                                                                                                                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_.x);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         §§push(this.§<<§.y);
                                                                                                                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_.y);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         §§push(this.§<<§.z);
                                                                                                                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_.z);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().z = §§pop();
                                                                                                                                                                                                                                                         addr1577:
                                                                                                                                                                                                                                                         addr1559:
                                                                                                                                                                                                                                                         addr1576:
                                                                                                                                                                                                                                                         addr1578:
                                                                                                                                                                                                                                                         addr1561:
                                                                                                                                                                                                                                                         §§push(_loc20_.x);
                                                                                                                                                                                                                                                         §§push(this.§9?§.x);
                                                                                                                                                                                                                                                         if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1570:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            §§push(_loc20_.z * this.§<!^§.x);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc8_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                         addr1579:
                                                                                                                                                                                                                                                         addr1637:
                                                                                                                                                                                                                                                         addr1603:
                                                                                                                                                                                                                                                         addr1653:
                                                                                                                                                                                                                                                         if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1519:
                                                                                                                                                                                                                                                            §§push(_loc20_.x);
                                                                                                                                                                                                                                                            §§push(this.§9?§);
                                                                                                                                                                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1532:
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                               §§push(_loc20_.z);
                                                                                                                                                                                                                                                               if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§<!^§);
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1551:
                                                                                                                                                                                                                                                                     §§push(Number(§§pop() + §§pop() * §§pop().y));
                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                                                                                                                        addr1485:
                                                                                                                                                                                                                                                                        addr1555:
                                                                                                                                                                                                                                                                        §§push(_loc20_.x * this.m_s1);
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc20_.y);
                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1498:
                                                                                                                                                                                                                                                                                 §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                 §§push(this.m_a1);
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1508:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1512:
                                                                                                                                                                                                                                                                                          _loc10_ = Number(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          addr1513:
                                                                                                                                                                                                                                                                                          addr1511:
                                                                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1406:
                                                                                                                                                                                                                                                                                             §§push(_loc20_.x);
                                                                                                                                                                                                                                                                                             if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.m_s2);
                                                                                                                                                                                                                                                                                                   if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1429:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                         if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc25_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1445:
                                                                                                                                                                                                                                                                                                                     §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                        if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1457:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1461:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 addr1469:
                                                                                                                                                                                                                                                                                                                                 if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                       §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                       if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                             §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                             addr1381:
                                                                                                                                                                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                             if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc25_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr1322:
                                                                                                                                                                                                                                                                                                                                                   §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr1347:
                                                                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                               if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr1256:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + b2internal::[!2 * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(b2internal::^!? * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc25_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         addr1212:
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  addr1224:
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc26_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1256);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       addr2016:
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc2_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2058:
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc25_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2062:
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc3_.§%!V§);
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2062:
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2039:
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                             addr2056:
                                                                                                                                                                                                                                                                                                                                                                                                                                             if(_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr2062);
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                                                                                                                                                                                                                          addr2050:
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2056);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1579);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1513);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2062);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1511);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1381);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1512);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1347);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1224);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1551);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1445);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1457);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1322);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1212);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1660);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1555);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr2039);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1469);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr2050);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1406);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1457);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1347);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1485);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1429);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1637);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1675);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1603);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1519);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1577);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1498);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1532);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1559);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1461);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1532);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1498);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1508);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1429);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1570);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1551);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1653);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1576);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1570);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1551);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1512);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1498);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1532);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1578);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1570);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1561);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1620:
                                                                                                                                                                                                                                                         §§goto(addr1620);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1659);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1657:
                                                                                                                                                                                                                                                   §§goto(addr1657);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1577);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1121:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1053);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1071);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1058);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1044);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1069);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1063);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1068);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1067);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1066);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1061);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1064);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1026);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1021);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1026);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1060);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1041);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1070);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1044);
                                                                                                                                                                                       addr1074:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1089:
                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§<<§);
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(b2Math.§=!@§(this.§<<§.z,0));
                                                                                                                                                                                             if(!(_loc26_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().z = §§pop();
                                                                                                                                                                                                §§goto(addr1121);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1142);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1148);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1142);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1143);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1150);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(this.§"!"§);
                                                                                                                                                                              if(_loc25_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() == b2internal::>6)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1089);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1053);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1148);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1074);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr923);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr913);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                  {
                                                                                                                                                                     addr883:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc25_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr891:
                                                                                                                                                                        §§push(this.m_a2);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr898);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr913);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr915);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr923);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr913);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr906);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr891);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr883);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr898);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr861);
                                                                                                                                                }
                                                                                                                                                §§goto(addr909);
                                                                                                                                             }
                                                                                                                                             §§goto(addr915);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             _loc24_ = this.§%!m§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
                                                                                                                                             if(_loc25_)
                                                                                                                                             {
                                                                                                                                                addr2014:
                                                                                                                                                this.§<<§.x += _loc24_.x;
                                                                                                                                                addr2015:
                                                                                                                                                addr2013:
                                                                                                                                                addr2011:
                                                                                                                                                addr2010:
                                                                                                                                                §§push(this.§<<§);
                                                                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§<<§);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc25_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc25_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc24_.y);
                                                                                                                                                               if(_loc25_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr2004:
                                                                                                                                                                  §§pop().y = §§pop() + §§pop();
                                                                                                                                                                  addr1961:
                                                                                                                                                                  _loc8_ = _loc24_.x * this.§9?§.x;
                                                                                                                                                                  addr1962:
                                                                                                                                                                  addr1956:
                                                                                                                                                                  addr2005:
                                                                                                                                                                  addr1959:
                                                                                                                                                                  addr1960:
                                                                                                                                                                  §§push(_loc24_.x);
                                                                                                                                                                  §§push(this.§9?§);
                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1948:
                                                                                                                                                                     §§push(§§pop() * §§pop().y);
                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1951:
                                                                                                                                                                        _loc9_ = Number(§§pop());
                                                                                                                                                                        addr1952:
                                                                                                                                                                        §§push(_loc24_.x);
                                                                                                                                                                        if(_loc25_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1909:
                                                                                                                                                                           §§push(this.m_s1);
                                                                                                                                                                           if(!(_loc26_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr1919:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              §§push(_loc24_.y);
                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1923:
                                                                                                                                                                                 §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                 if(_loc25_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    addr1931:
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc24_.x);
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc25_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1872:
                                                                                                                                                                                             §§push(this.m_s2);
                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1881:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1880:
                                                                                                                                                                                                   §§push(Number(§§pop() + _loc24_.y));
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc25_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      §§push(_loc4_.x);
                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      §§push(_loc4_.y);
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      addr1896:
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1805:
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1810:
                                                                                                                                                                                                            §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                                                                            if(_loc25_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1820:
                                                                                                                                                                                                                  §§push(Number(§§pop() - §§pop()));
                                                                                                                                                                                                                  if(_loc25_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc5_ = §§pop();
                                                                                                                                                                                                                     addr1829:
                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                        if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        addr1751:
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + b2internal::[!2 * _loc9_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                                                                    if(_loc25_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc25_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2internal::^!? * _loc11_);
                                                                                                                                                                                                                                                if(_loc25_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(_loc25_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1724:
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc25_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                                                                     if(_loc25_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1751);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr2016);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr2015);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1962);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1931);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1751);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1880);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1820);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1805);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1724);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1872);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1810);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1956);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1951);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1881);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1724);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1952);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1896);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1829);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1802:
                                                                                                                                                                                                                        §§goto(addr1802);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1896);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1948);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1919);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1880);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1919);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1857:
                                                                                                                                                                                                      §§goto(addr1857);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1962);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1923);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1909);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1923);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1880);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr2005);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1961);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1959);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1948);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1923);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1960);
                                                                                                                                                                  }
                                                                                                                                                                  addr1958:
                                                                                                                                                                  §§goto(addr1958);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr2013);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2011);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr2014);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2004);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2010);
                                                                                                                                                }
                                                                                                                                                addr2008:
                                                                                                                                                §§goto(addr2008);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1896);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr809);
                                                                                                                                    }
                                                                                                                                    §§goto(addr915);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr809);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr789);
                                                                                                                     }
                                                                                                                     §§goto(addr797);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr725);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr289:
                                                                                                         if(_loc26_ && param1)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(this.m_a2);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop44:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc25_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc25_)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           loop45:
                                                                                                                           while(!(_loc26_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              §§push(_loc4_.x);
                                                                                                                              if(_loc25_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - b2internal::,' * _loc8_);
                                                                                                                              }
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc26_)
                                                                                                                                 {
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       if(_loc25_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          §§push(_loc4_.y);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - b2internal::,' * _loc9_);
                                                                                                                                          }
                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                          loop47:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(_loc25_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc25_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(b2internal::=!Z * _loc10_);
                                                                                                                                                      if(_loc25_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc25_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc26_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc25_ || _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop44;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + b2internal::[!2 * _loc8_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(b2Math);
                                                                                                                                                                                 §§push(this.§1!'§);
                                                                                                                                                                                 if(!(_loc26_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr458:
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr461:
                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().§1!'§ = §§pop().§]!M§(§§pop(),§§pop(),_loc17_);
                                                                                                                                                                                       break loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr461);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr458);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr476);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr418);
                                                                                                                                                                  }
                                                                                                                                                                  while(_loc25_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr502);
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  continue loop10;
                                                                                                                                                                  addr494:
                                                                                                                                                               }
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr741);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                            if(!(_loc26_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr409);
                                                                                                                                                               §§push(this.§<!^§);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr750:
                                                                                                                                                         §§goto(addr733);
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr399:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr675);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr426);
                                                                                                                                                }
                                                                                                                                                §§goto(addr287);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(_loc25_ || param1)
                                                                                                                                          {
                                                                                                                                             §§goto(addr668);
                                                                                                                                          }
                                                                                                                                          §§goto(addr693);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr383);
                                                                                                                                 }
                                                                                                                                 §§goto(addr365);
                                                                                                                              }
                                                                                                                              while(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§goto(addr494);
                                                                                                                                 §§push(this.§1!'§);
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc25_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr391);
                                                                                                                                 §§push(this.§1!'§);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr314);
                                                                                                                           }
                                                                                                                           addr314:
                                                                                                                           §§goto(addr503);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr381);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr399);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr417);
                                                                                                         }
                                                                                                         §§goto(addr675);
                                                                                                      }
                                                                                                      addr747:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§goto(addr750);
                                                                                                      }
                                                                                                      §§goto(addr733);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr699:
                                                                                    §§push(§§pop() - _loc4_.y);
                                                                                    if(!(_loc26_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§goto(addr683);
                                                                                       }
                                                                                       §§goto(addr747);
                                                                                    }
                                                                                    §§goto(addr725);
                                                                                 }
                                                                                 if(_loc26_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr488);
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr672:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc26_)
                                                                        {
                                                                           §§goto(addr675);
                                                                        }
                                                                        §§goto(addr683);
                                                                     }
                                                                     §§goto(addr718);
                                                                  }
                                                               }
                                                               §§goto(addr725);
                                                            }
                                                         }
                                                         §§goto(addr699);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr672);
                                       }
                                       §§goto(addr746);
                                    }
                                 }
                              }
                              §§goto(addr654);
                           }
                        }
                     }
                     addr652:
                  }
                  §§goto(addr551);
               }
               §§goto(addr652);
            }
            §§goto(addr650);
         }
         §§goto(addr197);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
