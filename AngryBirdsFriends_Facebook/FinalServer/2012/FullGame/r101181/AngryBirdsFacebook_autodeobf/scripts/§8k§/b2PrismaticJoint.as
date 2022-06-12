package §8k§
{
   import §#]§.b2Mat22;
   import §#]§.b2Mat33;
   import §#]§.b2Math;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §#]§.b2Vec3;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §5!n§:b2Vec2;
      
      private var §66§:b2Vec2;
      
      private var §,!y§:Number;
      
      private var §<!j§:b2Vec2;
      
      private var §4!c§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §1!o§:b2Mat33;
      
      private var §0!y§:b2Vec3;
      
      private var §""C§:Number;
      
      private var § b§:Number;
      
      private var §%R§:Number;
      
      private var §9!H§:Number;
      
      private var § !m§:Number;
      
      private var §%p§:Number;
      
      private var §=!1§:Boolean;
      
      private var §]!_§:Boolean;
      
      private var §#Q§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && this))
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§5!n§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§66§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§<!j§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§4!c§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§1!o§ = new b2Mat33();
                              continue loop4;
                              addr184:
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              this.§""C§ = 0;
                              loop21:
                              while(true)
                              {
                                 this.§ b§ = 0;
                                 loop22:
                                 for(; _loc5_; if(_loc6_ && _loc3_)
                                 {
                                    continue;
                                 },§§goto(addr92))
                                 {
                                    this.§%R§ = param1.§[!7§;
                                    loop23:
                                    while(_loc5_)
                                    {
                                       this.§9!H§ = param1.§<!T§;
                                       loop24:
                                       while(true)
                                       {
                                          this.§ !m§ = param1.§22§;
                                          while(_loc5_)
                                          {
                                             this.§%p§ = param1.motorSpeed;
                                             do
                                             {
                                                this.§=!1§ = param1.§3"%§;
                                                loop27:
                                                while(true)
                                                {
                                                   this.§]!_§ = param1.§[!c§;
                                                   loop28:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         this.§#Q§ = b2internal::2!3;
                                                         loop29:
                                                         while(_loc5_)
                                                         {
                                                            this.§<!j§.§;v§();
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop22;
                                                               }
                                                               continue loop29;
                                                               addr99:
                                                               this.§4!c§.§;v§();
                                                               if(_loc5_ || this)
                                                               {
                                                                  continue loop28;
                                                               }
                                                            }
                                                            while(_loc5_ || _loc2_)
                                                            {
                                                               this.§,!y§ = param1.§ var§;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     this.§0!y§.§;v§();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        §§goto(addr184);
                                                                     }
                                                                     continue loop5;
                                                                     addr182:
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            while(true)
                                                            {
                                                               this.m_localAnchor1.SetV(param1.§#C§);
                                                               addr273:
                                                               while(_loc5_)
                                                               {
                                                                  this.m_localAnchor2.SetV(param1.§^!J§);
                                                                  break loop23;
                                                               }
                                                               continue loop3;
                                                               §§goto(addr225);
                                                            }
                                                            addr225:
                                                         }
                                                         continue loop24;
                                                      }
                                                      continue loop27;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             while(_loc6_ && param1);
                                             
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop23;
                                             }
                                             if(!_loc6_)
                                             {
                                                addr71:
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   return;
                                                }
                                                addr286:
                                                addr255:
                                                while(_loc5_)
                                                {
                                                   §§push(this.§66§);
                                                   while(true)
                                                   {
                                                      §§push(this.§5!n§);
                                                      addr238:
                                                      addr248:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().y);
                                                         addr239:
                                                         while(true)
                                                         {
                                                            §§push(-§§pop());
                                                            addr240:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      §§push(this.§66§);
                                                      if(_loc6_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§5!n§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               §§goto(addr225);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr239);
                                                            }
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr238);
                                                      }
                                                   }
                                                   §§goto(addr71);
                                                }
                                                while(!_loc6_)
                                                {
                                                   super(param1);
                                                   §§goto(addr280);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr182);
                                          }
                                          continue loop21;
                                       }
                                    }
                                    while(!_loc6_)
                                    {
                                       while(true)
                                       {
                                          this.§5!n§.SetV(param1.§8"C§);
                                          §§goto(addr255);
                                       }
                                    }
                                    §§goto(addr273);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::8!Z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4"0.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§0!y§.x);
            if(!_loc3_)
            {
               §§push(this.§4!c§.x);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || this)
                  {
                     addr48:
                     §§push(this.§ b§);
                     if(_loc2_)
                     {
                        §§push(this.§0!y§.z);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_)
                           {
                              addr75:
                              §§push(this.§<!j§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc3_)
                                 {
                                    addr83:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr92:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                       }
                                       §§goto(addr151);
                                    }
                                    §§push(this.§0!y§.x);
                                    if(!(_loc3_ && this))
                                    {
                                       addr105:
                                       §§push(this.§4!c§.y);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc3_)
                                          {
                                             §§push(this.§ b§);
                                             if(_loc2_)
                                             {
                                                addr127:
                                                §§push(this.§0!y§.z);
                                                if(_loc2_ || this)
                                                {
                                                   addr149:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr145:
                                                      §§push(this.§<!j§.y);
                                                   }
                                                   addr151:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() * (§§pop() + §§pop()));
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr127);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr151);
               }
               §§goto(addr75);
            }
            §§goto(addr48);
         }
         §§goto(addr92);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§0!y§.y;
         }
      }
      
      public function §`z§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::8!Z;
         var _loc2_:b2Body = b2internal::4"0;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.x);
            if(_loc10_ || _loc2_)
            {
               addr66:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(_loc5_.y);
            if(_loc10_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.y);
               if(!_loc11_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               var _loc8_:b2Vec2;
               §§push((_loc8_ = _loc1_.§9!]§(this.§5!n§)).x);
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
                           §§push(§§pop() * _loc7_);
                           if(_loc11_)
                           {
                           }
                           §§goto(addr138);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc10_ || _loc1_)
                        {
                           addr136:
                           §§push(Number(§§pop()));
                        }
                     }
                     §§push(§§pop());
                  }
                  addr138:
                  var _loc9_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr136);
            }
            §§goto(addr82);
         }
         §§goto(addr66);
      }
      
      public function §8!>§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::8!Z;
         var _loc2_:b2Body = b2internal::4"0;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc21_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc21_)
            {
               addr61:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || this)
            {
               §§push(_loc4_);
               if(!_loc22_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc22_)
                  {
                     addr79:
                     §§push(_loc3_.col2.x);
                     if(!_loc22_)
                     {
                        addr86:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(!(_loc22_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr86);
                  }
                  var _loc6_:* = §§pop();
                  if(_loc21_ || _loc3_)
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
                              §§push(_loc3_.col2.y);
                              if(!_loc22_)
                              {
                                 addr124:
                                 §§push(§§pop() * _loc5_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc22_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc22_ && _loc2_))
                                 {
                                    addr137:
                                    _loc5_ = §§pop();
                                    if(_loc21_)
                                    {
                                       addr140:
                                       §§push(_loc6_);
                                       if(_loc21_)
                                       {
                                          addr144:
                                          _loc4_ = Number(§§pop());
                                       }
                                       §§goto(addr144);
                                    }
                                    _loc3_ = _loc2_.m_xf.R;
                                    §§push(this.m_localAnchor2.x);
                                    if(!(_loc22_ && this))
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                       if(_loc21_ || _loc3_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(this.m_localAnchor2.y);
                                    if(_loc21_ || _loc2_)
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(_loc21_ || _loc2_)
                                       {
                                          addr196:
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
                                             addr318:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr319:
                                                addr358:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc21_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc3_.col2);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr325:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         addr326:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr327:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr328:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc21_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc6_ = §§pop();
                                                               }
                                                               addr359:
                                                               var _loc9_:* = §§pop();
                                                               §§push(_loc1_.m_sweep.c.y);
                                                               if(!(_loc22_ && _loc1_))
                                                               {
                                                                  §§push(§§pop() + _loc5_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.x);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§§pop() + _loc7_);
                                                                  if(_loc21_ || _loc1_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(_loc21_)
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(_loc21_)
                                                                  {
                                                                     addr404:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc11_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() - _loc10_);
                                                                     if(!(_loc22_ && _loc2_))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc14_:* = §§pop();
                                                                  var _loc15_:b2Vec2 = _loc1_.§9!]§(this.§5!n§);
                                                                  var _loc16_:b2Vec2 = _loc1_.§="8§;
                                                                  var _loc17_:b2Vec2 = _loc2_.§="8§;
                                                                  §§push(_loc1_.m_angularVelocity);
                                                                  if(!(_loc22_ && this))
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
                                                                  if(!(_loc22_ && this))
                                                                  {
                                                                     §§push(_loc18_);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!(_loc22_ && _loc3_))
                                                                        {
                                                                           §§push(_loc15_.y);
                                                                           if(!(_loc22_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_ || _loc3_)
                                                                              {
                                                                                 addr496:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    if(!(_loc22_ && _loc2_))
                                                                                    {
                                                                                       §§push(_loc18_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          §§push(_loc15_.x);
                                                                                          if(!(_loc22_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(_loc15_.x);
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         §§push(_loc17_.x);
                                                                                                         if(_loc21_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc21_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§goto(addr573);
                                                                                                                     }
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                                  §§goto(addr647);
                                                                                                               }
                                                                                                               §§goto(addr585);
                                                                                                            }
                                                                                                            addr573:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc16_.x);
                                                                                                               if(_loc21_ || _loc1_)
                                                                                                               {
                                                                                                                  addr585:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(_loc18_);
                                                                                                                     if(!(_loc22_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           if(_loc21_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr618);
                                                                                                                                 }
                                                                                                                                 §§goto(addr630);
                                                                                                                              }
                                                                                                                              §§goto(addr683);
                                                                                                                           }
                                                                                                                           §§goto(addr647);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr639);
                                                                                                                  }
                                                                                                                  §§goto(addr690);
                                                                                                               }
                                                                                                               §§goto(addr683);
                                                                                                            }
                                                                                                            §§goto(addr618);
                                                                                                         }
                                                                                                         addr618:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc22_ && _loc1_))
                                                                                                         {
                                                                                                            addr626:
                                                                                                            §§push(_loc15_.y);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr630:
                                                                                                               §§push(_loc17_.y);
                                                                                                               if(!(_loc22_ && _loc3_))
                                                                                                               {
                                                                                                                  addr639:
                                                                                                                  §§push(_loc19_);
                                                                                                                  if(!(_loc22_ && _loc1_))
                                                                                                                  {
                                                                                                                     addr647:
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc21_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              addr676:
                                                                                                                              §§push(_loc16_.y);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    addr683:
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       addr688:
                                                                                                                                       §§push(§§pop() - §§pop() * _loc4_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr688);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr688);
                                                                                                                           }
                                                                                                                           §§goto(addr690);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr688);
                                                                                                               }
                                                                                                               §§goto(addr676);
                                                                                                            }
                                                                                                            addr690:
                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                            if(_loc22_ && _loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr703);
                                                                                                   }
                                                                                                   §§goto(addr701);
                                                                                                }
                                                                                                §§goto(addr626);
                                                                                             }
                                                                                             §§goto(addr690);
                                                                                          }
                                                                                          §§goto(addr585);
                                                                                       }
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                    §§goto(addr626);
                                                                                 }
                                                                                 §§goto(addr701);
                                                                              }
                                                                              §§goto(addr703);
                                                                           }
                                                                           §§goto(addr690);
                                                                        }
                                                                        addr703:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc22_)
                                                                        {
                                                                           addr701:
                                                                           return Number(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr496);
                                                                  }
                                                                  §§goto(addr701);
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr358:
                                                §§goto(addr359);
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc3_.col1);
                                                if(!(_loc21_ || _loc3_))
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc21_ || _loc2_)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc21_)
                                                   {
                                                      if(!_loc22_)
                                                      {
                                                         if(_loc21_ || _loc2_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc21_ || this)
                                                            {
                                                               if(_loc21_)
                                                               {
                                                                  §§push(_loc3_.col2);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc22_ && _loc2_))
                                                                     {
                                                                        addr284:
                                                                        §§push(_loc8_);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc22_ && _loc1_))
                                                                           {
                                                                              addr295:
                                                                              if(!(_loc22_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc21_ || _loc3_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    while(_loc21_)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       if(_loc21_ || _loc1_)
                                                                                       {
                                                                                          if(_loc22_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc21_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc21_ || _loc2_))
                                                                                             {
                                                                                                break loop9;
                                                                                             }
                                                                                             _loc7_ = §§pop();
                                                                                             if(!_loc21_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§push(_loc1_.m_sweep.c.x);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr349:
                                                                                                §§push(§§pop() + _loc4_);
                                                                                                if(_loc21_ || _loc3_)
                                                                                                {
                                                                                                   §§goto(addr358);
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                    addr332:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr319);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr318);
                                          }
                                       }
                                       §§goto(addr332);
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr140);
               }
               §§goto(addr86);
            }
            §§goto(addr79);
         }
         §§goto(addr61);
      }
      
      public function §1"1§() : Boolean
      {
         return this.§=!1§;
      }
      
      public function §6@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::8!Z.SetAwake(true);
            while(true)
            {
               b2internal::4"0.SetAwake(true);
               while(_loc3_)
               {
                  this.§=!1§ = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §#K§() : Number
      {
         return this.§%R§;
      }
      
      public function §4s§() : Number
      {
         return this.§9!H§;
      }
      
      public function §9!r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::8!Z.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::4"0.SetAwake(true);
               while(true)
               {
                  this.§%R§ = param1;
                  addr60:
                  while(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§9!H§ = param2;
            if(!(_loc3_ && param1))
            {
               break;
            }
            §§goto(addr60);
         }
      }
      
      public function §1!L§() : Boolean
      {
         return this.§]!_§;
      }
      
      public function §+!P§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            b2internal::8!Z.SetAwake(true);
         }
         do
         {
            b2internal::4"0.SetAwake(true);
            do
            {
               this.§]!_§ = param1;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function §3C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::8!Z.SetAwake(true);
         }
         do
         {
            b2internal::4"0.SetAwake(true);
            do
            {
               this.§%p§ = param1;
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || this));
         
      }
      
      public function §6<§() : Number
      {
         return this.§%p§;
      }
      
      public function §`2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::8!Z.SetAwake(true);
            while(true)
            {
               b2internal::4"0.SetAwake(true);
               while(_loc3_)
               {
                  this.§ !m§ = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §-!$§() : Number
      {
         return this.§ b§;
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
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::8!Z;
         var _loc3_:b2Body = b2internal::4"0;
         var _loc4_:b2Vec2 = _loc2_.§="8§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc26_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         var _loc6_:b2Vec2 = _loc3_.§="8§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc25_)
         {
            §§push(this.§]!_§);
            if(_loc26_ || param1)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§<!j§.x);
                        loop5:
                        while(true)
                        {
                           §§push(_loc6_.x);
                           if(!_loc25_)
                           {
                              §§push(_loc4_.x);
                              if(!_loc25_)
                              {
                                 §§push(§§pop() - §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§<!j§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          if(!(_loc25_ && this))
                                          {
                                             §§push(_loc6_.y);
                                             if(_loc26_ || param1)
                                             {
                                                §§push(_loc4_.y);
                                                if(_loc26_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc25_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc25_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.m_a2);
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc26_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc26_)
                                                                     {
                                                                        §§push(this.m_a1);
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc25_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc25_ && param1))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc14_ = §§pop();
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§""C§);
                                                                                          if(!_loc25_)
                                                                                          {
                                                                                             §§push(this.§%p§);
                                                                                             loop15:
                                                                                             while(!_loc25_)
                                                                                             {
                                                                                                §§push(_loc14_);
                                                                                                if(_loc26_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() - _loc4_.y);
                                                                                                if(!(_loc25_ && _loc3_))
                                                                                                {
                                                                                                   addr713:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc26_ || this)
                                                                                                   {
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   break loop5;
                                                                                                }
                                                                                                §§push(§§pop() - §§pop() * §§pop());
                                                                                                if(_loc26_)
                                                                                                {
                                                                                                   addr767:
                                                                                                   var _loc12_:Number = §§pop();
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc5_);
                                                                                                      if(!(_loc25_ && this))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc13_:* = §§pop();
                                                                                                   if(_loc26_)
                                                                                                   {
                                                                                                      §§push(this.§=!1§);
                                                                                                      if(!(_loc25_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!(_loc25_ && param1))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc25_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     §§push(this.§#Q§ == b2internal::2!3);
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        addr815:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc25_)
                                                                                                                           {
                                                                                                                              addr818:
                                                                                                                              §§push(this.§<!j§.x);
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(!(_loc25_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_.x);
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!(_loc25_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc26_ || param1)
                                                                                                                                          {
                                                                                                                                             addr852:
                                                                                                                                             §§push(this.§<!j§.y);
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(!(_loc25_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr866:
                                                                                                                                                   §§push(§§pop() - _loc4_.y);
                                                                                                                                                   if(!(_loc25_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc26_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.m_a2);
                                                                                                                                                            if(!(_loc25_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr896:
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!(_loc25_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr904:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr907:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.m_a1);
                                                                                                                                                                        if(!(_loc25_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr921:
                                                                                                                                                                           §§push(§§pop() - §§pop() * _loc5_);
                                                                                                                                                                           if(_loc26_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr929:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr921);
                                                                                                                                                                     }
                                                                                                                                                                     _loc18_ = §§pop();
                                                                                                                                                                     _loc19_ = this.§0!y§.Copy();
                                                                                                                                                                     _loc20_ = this.§1!o§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
                                                                                                                                                                     if(_loc26_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr1164:
                                                                                                                                                                        this.§0!y§.§&3§(_loc20_);
                                                                                                                                                                        addr1166:
                                                                                                                                                                        if(this.§#Q§ == b2internal::+p)
                                                                                                                                                                        {
                                                                                                                                                                           addr1160:
                                                                                                                                                                           this.§0!y§.z = b2Math.§2Y§(this.§0!y§.z,0);
                                                                                                                                                                           addr1055:
                                                                                                                                                                           addr1079:
                                                                                                                                                                           addr1080:
                                                                                                                                                                           addr1057:
                                                                                                                                                                           §§push(-_loc12_);
                                                                                                                                                                           if(!(_loc25_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr1068:
                                                                                                                                                                              §§push(this.§0!y§.z);
                                                                                                                                                                              §§push(_loc19_.z);
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1073:
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 §§push(this.§1!o§.col3.x);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           _loc21_ = §§pop();
                                                                                                                                                                           addr1152:
                                                                                                                                                                           addr1161:
                                                                                                                                                                           if(!(_loc25_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc25_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc25_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§0!y§);
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().z);
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc19_.z);
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(_loc26_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr992:
                                                                                                                                                                                                               if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§1!o§);
                                                                                                                                                                                                                  if(_loc26_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().col3);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1022:
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1025:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                 if(_loc26_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1042:
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1045:
                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                       if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1055);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc23_ = this.§1!o§.Solve22(new b2Vec2(),_loc21_,_loc22_);
                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                          §§push(_loc23_.x);
                                                                                                                                                                                                                                          if(!(_loc25_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + _loc19_.x);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc23_);
                                                                                                                                                                                                                                             §§push(_loc23_.y);
                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + _loc19_.y);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                             if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1658:
                                                                                                                                                                                                                                                this.§0!y§.x = _loc23_.x;
                                                                                                                                                                                                                                                addr1659:
                                                                                                                                                                                                                                                §§push(this.§0!y§);
                                                                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc23_.y);
                                                                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      §§push(this.§0!y§.x);
                                                                                                                                                                                                                                                      if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - _loc19_.x);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      addr1641:
                                                                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                                                                      §§push(this.§0!y§.y);
                                                                                                                                                                                                                                                      if(!(_loc25_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - _loc19_.y);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                                                                      addr1652:
                                                                                                                                                                                                                                                      addr1641:
                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         §§push(this.§0!y§.z);
                                                                                                                                                                                                                                                         if(_loc26_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc19_.z);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().z = §§pop();
                                                                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1576:
                                                                                                                                                                                                                                                               _loc8_ = Number(_loc20_.x * this.§4!c§.x + _loc20_.z * this.§<!j§.x);
                                                                                                                                                                                                                                                               addr1575:
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc20_.x);
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§4!c§);
                                                                                                                                                                                                                                                                     if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1537:
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop().y);
                                                                                                                                                                                                                                                                        §§push(_loc20_.z);
                                                                                                                                                                                                                                                                        §§push(this.§<!j§);
                                                                                                                                                                                                                                                                        if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1549:
                                                                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                                                                           if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1559:
                                                                                                                                                                                                                                                                              _loc9_ = Number(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                              addr1558:
                                                                                                                                                                                                                                                                              addr1557:
                                                                                                                                                                                                                                                                              addr1560:
                                                                                                                                                                                                                                                                              §§push(_loc20_.x);
                                                                                                                                                                                                                                                                              §§push(this.m_s1);
                                                                                                                                                                                                                                                                              if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1470:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1480:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                       if(!_loc25_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc26_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr1502:
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop() * this.m_a1);
                                                                                                                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1510:
                                                                                                                                                                                                                                                                                                   _loc10_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                   if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1384:
                                                                                                                                                                                                                                                                                                         §§push(_loc20_.x * this.m_s2);
                                                                                                                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc20_.y);
                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1407:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc20_.z);
                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr1418:
                                                                                                                                                                                                                                                                                                                                 §§push(this.m_a2);
                                                                                                                                                                                                                                                                                                                                 if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc25_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1435:
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr1438:
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1446:
                                                                                                                                                                                                                                                                                                                                             _loc11_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.x);
                                                                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::>!m * _loc8_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                §§push(_loc4_.y);
                                                                                                                                                                                                                                                                                                                                                if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() - b2internal::>!m * _loc9_);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                addr1380:
                                                                                                                                                                                                                                                                                                                                                if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr1325:
                                                                                                                                                                                                                                                                                                                                                            §§push(b2internal::;!o * _loc10_);
                                                                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr1335:
                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc26_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 addr1347:
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + b2internal::&!W * _loc8_);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    addr1296:
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr1269:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + b2internal::&!W * _loc9_);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(b2internal::7m * _loc11_);
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc26_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr1243:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           _loc7_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc25_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc25_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1269);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr2017:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§push(_loc2_.§="8§);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§pop().SetV(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§pop().SetV(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                                                    _loc3_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr2064:
                                                                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                       if(_loc25_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr2068);
                                                                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                    addr2064:
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr2064);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1659);
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1296);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr2068);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1537);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1243);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1325);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1470);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1335);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1243);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr1347);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr2058);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1380);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1652);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1384);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1446);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr1575);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1407);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1335);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1384);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1558);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1438);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1335);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr2064);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr2040);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1559);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1549);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1502);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1435);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1576);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1557);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1559);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1418);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1559);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1480);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1510);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1560);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr2058:
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc2_.m_angularVelocity = _loc5_;
                                                                                                                                                                                                                                                                                                      addr2068:
                                                                                                                                                                                                                                                                                                      §§push(_loc3_.§="8§);
                                                                                                                                                                                                                                                                                                      addr2068:
                                                                                                                                                                                                                                                                                                      addr2040:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   return;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1576);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1537);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1502);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1576);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1537);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1576);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1559);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2068);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1641);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr2068);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1658);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1656:
                                                                                                                                                                                                                                                §§goto(addr1656);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr2068);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1641);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1055);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1079);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1045);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1068);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1073);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1068);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1073);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1068);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1025);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1022);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr992);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1068);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1080);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1045);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1057);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1042);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1166);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1152);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1161);
                                                                                                                                                                           }
                                                                                                                                                                           addr1146:
                                                                                                                                                                           §§goto(addr1055);
                                                                                                                                                                           addr1154:
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.§#Q§);
                                                                                                                                                                        if(_loc26_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() == b2internal::9!i)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc26_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1121:
                                                                                                                                                                                 §§push(this.§0!y§);
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(b2Math.§]"=§(this.§0!y§.z,0));
                                                                                                                                                                                       if(!(_loc25_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().z = §§pop();
                                                                                                                                                                                          §§goto(addr1146);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1160);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1164);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1154);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1160);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1166);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1121);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr921);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr929);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr921);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr904);
                                                                                                                                                }
                                                                                                                                                §§goto(addr921);
                                                                                                                                             }
                                                                                                                                             §§goto(addr907);
                                                                                                                                          }
                                                                                                                                          §§goto(addr929);
                                                                                                                                       }
                                                                                                                                       §§goto(addr921);
                                                                                                                                    }
                                                                                                                                    §§goto(addr866);
                                                                                                                                 }
                                                                                                                                 §§goto(addr896);
                                                                                                                              }
                                                                                                                              §§goto(addr852);
                                                                                                                           }
                                                                                                                           §§goto(addr907);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loc24_ = this.§1!o§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
                                                                                                                           if(!(_loc25_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr2015:
                                                                                                                              this.§0!y§.x += _loc24_.x;
                                                                                                                              addr2016:
                                                                                                                              addr2014:
                                                                                                                              addr2012:
                                                                                                                              addr2011:
                                                                                                                              §§push(this.§0!y§);
                                                                                                                              if(_loc26_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(this.§0!y§);
                                                                                                                                 if(!(_loc25_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(!(_loc25_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc25_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc24_.y);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             addr2003:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc25_)
                                                                                                                                             {
                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                addr1965:
                                                                                                                                                §§push(_loc24_.x);
                                                                                                                                                if(!_loc25_)
                                                                                                                                                {
                                                                                                                                                   addr1964:
                                                                                                                                                   §§push(Number(§§pop() * this.§4!c§.x));
                                                                                                                                                }
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                addr2006:
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   addr1946:
                                                                                                                                                   §§push(_loc24_.x);
                                                                                                                                                   §§push(this.§4!c§);
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      addr1953:
                                                                                                                                                      _loc9_ = Number(§§pop() * §§pop().y);
                                                                                                                                                      addr1926:
                                                                                                                                                      addr1952:
                                                                                                                                                      addr1954:
                                                                                                                                                      addr1951:
                                                                                                                                                      §§push(_loc24_.x);
                                                                                                                                                      §§push(this.m_s1);
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc25_)
                                                                                                                                                         {
                                                                                                                                                            addr1935:
                                                                                                                                                            §§push(_loc24_.y);
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               addr1939:
                                                                                                                                                               §§push(Number(§§pop() + §§pop()));
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                  addr1942:
                                                                                                                                                                  §§push(_loc24_.x);
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1877:
                                                                                                                                                                        §§push(§§pop() * this.m_s2);
                                                                                                                                                                        §§push(_loc24_.y);
                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc25_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc25_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1905:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!(_loc25_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                       addr1913:
                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             §§push(_loc4_.x);
                                                                                                                                                                                             if(!(_loc25_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - b2internal::>!m * _loc8_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             §§push(_loc4_);
                                                                                                                                                                                             §§push(_loc4_.y);
                                                                                                                                                                                             if(!(_loc25_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - b2internal::>!m * _loc9_);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                             addr1802:
                                                                                                                                                                                             addr1850:
                                                                                                                                                                                             addr1867:
                                                                                                                                                                                             §§push(_loc5_);
                                                                                                                                                                                             §§push(b2internal::;!o * _loc10_);
                                                                                                                                                                                             if(!(_loc25_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1813:
                                                                                                                                                                                                §§push(Number(§§pop() - §§pop()));
                                                                                                                                                                                                if(_loc26_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                   addr1822:
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                            if(!(_loc25_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + b2internal::&!W * _loc8_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            addr1795:
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc25_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1760:
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + b2internal::&!W * _loc9_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                                                                  if(!(_loc25_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc26_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(b2internal::7m * _loc11_);
                                                                                                                                                                                                                                 if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1738:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(_loc26_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc25_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1760);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr2017);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1795);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1760);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1946);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1926);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1802);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1813);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1738);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1877);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1802);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1965);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1952);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1905);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1738);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1822);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1913);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1850);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1965);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1942);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1867);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1877);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr2006);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1954);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1953);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1939);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1905);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1953);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1935);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1939);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1905);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1964);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1951);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1939);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1964);
                                                                                                                                                }
                                                                                                                                                §§goto(addr2016);
                                                                                                                                             }
                                                                                                                                             §§goto(addr2015);
                                                                                                                                          }
                                                                                                                                          §§goto(addr2014);
                                                                                                                                       }
                                                                                                                                       §§goto(addr2012);
                                                                                                                                    }
                                                                                                                                    §§goto(addr2003);
                                                                                                                                 }
                                                                                                                                 §§goto(addr2011);
                                                                                                                              }
                                                                                                                              addr2009:
                                                                                                                              §§goto(addr2009);
                                                                                                                           }
                                                                                                                           §§goto(addr1802);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr815);
                                                                                                                  }
                                                                                                                  §§goto(addr818);
                                                                                                               }
                                                                                                               §§goto(addr815);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr815);
                                                                                                   }
                                                                                                   §§goto(addr907);
                                                                                                }
                                                                                                §§goto(addr767);
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc26_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   _loc15_ = §§pop();
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§<!j§);
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc25_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc26_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     addr450:
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc15_);
                                                                                                                        addr375:
                                                                                                                        loop35:
                                                                                                                        while(!(_loc25_ && this))
                                                                                                                        {
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(this.§<!j§);
                                                                                                                              if(!(_loc26_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              §§push(§§pop().y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop37:
                                                                                                                                 while(!_loc25_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop38:
                                                                                                                                    while(!(_loc25_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       loop39:
                                                                                                                                       for(; _loc26_; if(!(_loc26_ || _loc3_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },§§goto(addr135))
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(_loc26_)
                                                                                                                                          {
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                continue loop37;
                                                                                                                                             }
                                                                                                                                             §§push(this.m_a1);
                                                                                                                                             if(!(_loc25_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc26_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                loop40:
                                                                                                                                                while(_loc26_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc25_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc25_)
                                                                                                                                                      {
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         loop41:
                                                                                                                                                         while(!(_loc25_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!(_loc25_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_a2);
                                                                                                                                                               if(_loc26_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr328:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc25_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                              loop44:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 §§push(_loc4_.x);
                                                                                                                                                                                 if(_loc26_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - b2internal::>!m * _loc8_);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop41;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc25_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                       §§push(_loc4_.y);
                                                                                                                                                                                       if(!(_loc25_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - b2internal::>!m * _loc9_);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr658:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§#Q§ == b2internal::3"9);
                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(!§§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc25_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop();
                                                                                                                                                                                       §§goto(addr659);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr659:
                                                                                                                                                                                    addr126:
                                                                                                                                                                                    if(!(_loc25_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop3;
                                                                                                                                                                                          addr135:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          if(_loc26_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + b2internal::&!W * _loc9_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          addr151:
                                                                                                                                                                                          loop51:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr158:
                                                                                                                                                                                                if(!(_loc25_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop4;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr508:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(b2Math);
                                                                                                                                                                                                      §§push(this.§ b§);
                                                                                                                                                                                                      if(_loc26_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr467:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().§ b§ = §§pop().§<O§(§§pop(),§§pop(),_loc17_);
                                                                                                                                                                                                         break loop51;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr467);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop49:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc26_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr258:
                                                                                                                                                                                                while(!_loc25_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                                                                   if(!_loc25_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + b2internal::&!W * _loc8_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr474:
                                                                                                                                                                                          addr521:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§ b§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   if(_loc26_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc25_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop40;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                         addr240:
                                                                                                                                                                                                         if(!(_loc26_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc25_ && param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            §§goto(addr258);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr694:
                                                                                                                                                                                                            §§push(this.§4!c§.y);
                                                                                                                                                                                                            if(!_loc25_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr699:
                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr703);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr746:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr703);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc26_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr746);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr703);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop31;
                                                                                                                                                                                                   addr209:
                                                                                                                                                                                                   if(!(_loc25_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc25_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(b2internal::;!o * _loc10_);
                                                                                                                                                                                                         if(_loc25_ && _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc25_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr542);
                                                                                                                                                                                                addr412:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             §§goto(addr158);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§4"?§);
                                                                                                                                                                                             break loop37;
                                                                                                                                                                                             §§goto(addr474);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr126);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     addr499:
                                                                                                                                                                     addr512:
                                                                                                                                                                     while(_loc26_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        break loop35;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!(_loc25_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                           §§goto(addr521);
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        §§goto(addr499);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr327:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr674);
                                                                                                                                                            }
                                                                                                                                                            §§push(this.m_s1);
                                                                                                                                                            if(!(_loc25_ && this))
                                                                                                                                                            {
                                                                                                                                                               break loop31;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr703);
                                                                                                                                                         }
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                          §§goto(addr665);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr512);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop33;
                                                                                                                                 }
                                                                                                                                 while(_loc26_)
                                                                                                                                 {
                                                                                                                                    if(_loc25_)
                                                                                                                                    {
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    §§push(this.§ !m§);
                                                                                                                                    if(!(_loc25_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr499);
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr694);
                                                                                                                                    }
                                                                                                                                    §§goto(addr703);
                                                                                                                                 }
                                                                                                                                 addr544:
                                                                                                                                 addr101:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                    §§goto(addr545);
                                                                                                                                 }
                                                                                                                                 if(!(_loc26_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc25_)
                                                                                                                                 {
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc25_ && param1))
                                                                                                                                 {
                                                                                                                                    addr118:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!_loc25_)
                                                                                                                                    {
                                                                                                                                       addr121:
                                                                                                                                       if(_loc26_)
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          if(!_loc25_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr126);
                                                                                                                                          }
                                                                                                                                          §§goto(addr151);
                                                                                                                                       }
                                                                                                                                       §§goto(addr328);
                                                                                                                                    }
                                                                                                                                    addr729:
                                                                                                                                    §§push(this.m_s2);
                                                                                                                                    if(_loc26_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr694);
                                                                                                                                    }
                                                                                                                                    break loop31;
                                                                                                                                 }
                                                                                                                                 §§goto(addr121);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr544);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           §§goto(addr508);
                                                                                                                           §§goto(addr375);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      §§goto(addr703);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr543);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr752);
                                                                              }
                                                                              §§goto(addr694);
                                                                           }
                                                                           §§goto(addr703);
                                                                        }
                                                                     }
                                                                     §§goto(addr767);
                                                                  }
                                                                  break;
                                                               }
                                                               addr721:
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc25_ && param1))
                                                               {
                                                                  §§goto(addr729);
                                                               }
                                                               §§goto(addr767);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr694);
                                                   }
                                                   §§goto(addr713);
                                                }
                                                §§goto(addr705);
                                             }
                                             §§goto(addr713);
                                          }
                                          §§goto(addr721);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr713);
                           }
                           break;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc25_)
                        {
                           §§goto(addr752);
                        }
                        §§goto(addr767);
                     }
                  }
                  §§push(this.§4!c§.x);
                  if(_loc26_)
                  {
                     §§goto(addr665);
                  }
                  §§goto(addr767);
                  addr568:
               }
               §§goto(addr658);
            }
         }
         §§goto(addr450);
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
