package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §01§:b2Vec2;
      
      private var §<"+§:b2Vec2;
      
      private var §+u§:b2Vec2;
      
      private var §4!-§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<"6§:b2Mat22;
      
      private var §5!i§:b2Vec2;
      
      private var §>E§:Number;
      
      private var §`t§:Number;
      
      private var §""@§:Number;
      
      private var §=" §:Number;
      
      private var §<6§:Number;
      
      private var §?!,§:Number;
      
      private var §!!$§:Boolean;
      
      private var § !P§:Boolean;
      
      private var §<!3§:int;
      
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
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(true)
               {
                  this.§01§ = new b2Vec2();
                  while(true)
                  {
                     this.§<"+§ = new b2Vec2();
                     loop3:
                     for(; _loc6_; while(!(_loc5_ && this))
                     {
                        this.§>E§ = 0;
                        §§goto(addr199);
                        §§goto(addr150);
                     })
                     {
                        this.§+u§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§4!-§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§<"6§ = new b2Mat22();
                              loop6:
                              while(true)
                              {
                                 this.§5!i§ = new b2Vec2();
                                 while(true)
                                 {
                                    super(param1);
                                    continue loop4;
                                    loop24:
                                    for(; !(_loc5_ && this); while(!(_loc5_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          this.§+u§.§?b§();
                                          §§goto(addr68);
                                       }
                                       §§goto(addr260);
                                       §§goto(addr47);
                                    })
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          this.§ !P§ = param1.§#a§;
                                          while(!_loc5_)
                                          {
                                             this.§<!3§ = b2internal::^#;
                                             continue loop24;
                                             addr54:
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                break loop25;
                                             }
                                             loop20:
                                             while(true)
                                             {
                                                this.§=" § = param1.§-!§;
                                                loop21:
                                                for(; _loc6_; if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                },addr143:,if(!(_loc5_ && param1))
                                                {
                                                   addr150:
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      this.§!!$§ = param1.§2<§;
                                                      continue loop24;
                                                   }
                                                }
                                                else
                                                {
                                                   while(!(_loc5_ && _loc3_))
                                                   {
                                                      this.§`t§ = 0;
                                                      §§goto(addr194);
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr253);
                                                   addr199:
                                                },§§goto(addr242))
                                                {
                                                   this.§<6§ = param1.§<!S§;
                                                   loop22:
                                                   while(true)
                                                   {
                                                      this.§?!,§ = param1.motorSpeed;
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         continue loop22;
                                                         addr68:
                                                         while(_loc6_ || this)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr77:
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               addr269:
                                                               while(true)
                                                               {
                                                                  this.§01§.SetV(param1.§>!'§);
                                                                  addr260:
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§push(this.§<"+§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§01§);
                                                                        addr248:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           addr252:
                                                                           while(true)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                                  §§goto(addr77);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§""@§ = param1.§?"'§;
                                                                  continue loop20;
                                                               }
                                                               addr194:
                                                            }
                                                            this.§4!-§.§?b§();
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop24;
                                                            }
                                                            §§goto(addr54);
                                                         }
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                addr276:
                                                while(true)
                                                {
                                                   this.m_localAnchor2.SetV(param1.§2!P§);
                                                   §§goto(addr269);
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  this.m_localAnchor1.SetV(param1.§3!&§);
                  §§goto(addr276);
               }
            }
         }
         §§goto(addr128);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§5!i§.x);
            if(!(_loc3_ && this))
            {
               §§push(this.§4!-§.x);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_)
                  {
                     addr48:
                     §§push(this.§`t§);
                     if(_loc2_)
                     {
                        §§push(this.§5!i§.y);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this.§+u§.x);
                              if(_loc2_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr91:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          §§push(this.§5!i§.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr105:
                                             §§push(this.§4!-§.y);
                                             if(!_loc3_)
                                             {
                                                addr110:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr113:
                                                   §§push(this.§`t§);
                                                   if(_loc2_)
                                                   {
                                                      addr117:
                                                      §§push(this.§5!i§.y);
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr144);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr117);
                                          }
                                          §§goto(addr144);
                                       }
                                    }
                                    §§goto(addr144);
                                 }
                                 addr144:
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_ || param1)
                                 {
                                    addr140:
                                    §§push(this.§+u§.y);
                                 }
                                 return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr91);
               }
               §§goto(addr105);
            }
            §§goto(addr48);
         }
         §§goto(addr91);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§5!i§.y;
         }
      }
      
      public function §>!b§() : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc11_ || _loc2_)
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
            if(_loc11_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2;
         §§push((_loc8_ = _loc1_.§!!7§(this.§01§)).x);
         if(_loc11_)
         {
            §§push(_loc6_);
            if(_loc11_ || _loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc10_)
               {
                  §§push(_loc8_.y);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() * _loc7_);
                     if(!_loc10_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc10_ && _loc2_))
                        {
                           addr133:
                           §§push(Number(§§pop()));
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr133);
                     }
                  }
               }
               §§goto(addr133);
            }
            var _loc9_:* = §§pop();
            return §§pop();
         }
         §§goto(addr133);
      }
      
      public function §&!8§() : Number
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc22_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!(_loc22_ && _loc1_))
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc21_ || _loc1_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            §§push(_loc3_.col1.x);
            if(_loc21_ || _loc3_)
            {
               §§push(_loc4_);
               if(_loc21_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc21_)
                  {
                     §§push(_loc3_.col2.x);
                     if(!_loc22_)
                     {
                        addr91:
                        §§push(§§pop() + §§pop() * _loc5_);
                        if(_loc22_ && _loc2_)
                        {
                        }
                        var _loc6_:* = §§pop();
                        if(_loc21_)
                        {
                           §§push(_loc3_.col1.y);
                           if(_loc21_)
                           {
                              §§push(_loc4_);
                              if(!_loc22_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc22_)
                                 {
                                    §§push(_loc3_.col2.y);
                                    if(!(_loc22_ && _loc2_))
                                    {
                                       addr126:
                                       §§push(§§pop() + §§pop() * _loc5_);
                                       if(!(_loc22_ && this))
                                       {
                                          addr134:
                                          §§push(Number(§§pop()));
                                          if(!_loc22_)
                                          {
                                             addr137:
                                             _loc5_ = §§pop();
                                             if(_loc21_ || _loc1_)
                                             {
                                                addr145:
                                                §§push(_loc6_);
                                                if(!_loc22_)
                                                {
                                                   addr149:
                                                   _loc4_ = Number(§§pop());
                                                }
                                                §§goto(addr149);
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc21_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(!(_loc22_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc21_ || this)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(_loc21_ || _loc2_)
                                                {
                                                   addr196:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc8_:* = §§pop();
                                                if(_loc21_ || _loc1_)
                                                {
                                                   §§push(_loc3_.col1);
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr309:
                                                      addr358:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!_loc22_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc21_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc3_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc21_)
                                                               {
                                                                  addr325:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     addr326:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  addr325:
                                                               }
                                                               addr327:
                                                               addr369:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc21_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     addr337:
                                                                     while(true)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                               addr369:
                                                               var _loc9_:* = §§pop();
                                                               §§push(_loc1_.m_sweep.c.y);
                                                               if(!(_loc22_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + _loc5_);
                                                                  if(_loc21_ || _loc3_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.x);
                                                               if(!(_loc22_ && this))
                                                               {
                                                                  §§push(§§pop() + _loc7_);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc2_.m_sweep.c.y);
                                                               if(!(_loc22_ && _loc2_))
                                                               {
                                                                  §§push(§§pop() + _loc8_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     addr424:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc12_:* = §§pop();
                                                                  §§push(_loc11_);
                                                                  if(!(_loc22_ && _loc1_))
                                                                  {
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc13_:* = §§pop();
                                                                  §§push(_loc12_);
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(§§pop() - _loc10_);
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        addr452:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc14_:* = §§pop();
                                                                     var _loc15_:b2Vec2 = _loc1_.§!!7§(this.§01§);
                                                                     var _loc16_:b2Vec2 = _loc1_.§]!g§;
                                                                     var _loc17_:b2Vec2 = _loc2_.§]!g§;
                                                                     §§push(_loc1_.m_angularVelocity);
                                                                     if(_loc21_ || _loc1_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc18_:* = §§pop();
                                                                     §§push(_loc2_.m_angularVelocity);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc19_:* = §§pop();
                                                                     §§push(_loc13_);
                                                                     if(_loc21_ || _loc1_)
                                                                     {
                                                                        §§push(_loc18_);
                                                                        if(_loc21_ || _loc3_)
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
                                                                                    if(_loc21_ || _loc2_)
                                                                                    {
                                                                                       §§push(_loc14_);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(_loc18_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             addr530:
                                                                                             §§push(_loc15_.x);
                                                                                             if(!(_loc22_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   addr547:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc21_ || _loc1_)
                                                                                                   {
                                                                                                      addr555:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc21_ || _loc3_)
                                                                                                      {
                                                                                                         addr563:
                                                                                                         §§push(_loc15_.x);
                                                                                                         if(!(_loc22_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc17_.x);
                                                                                                            if(_loc21_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(_loc19_);
                                                                                                               if(!(_loc22_ && this))
                                                                                                               {
                                                                                                                  addr589:
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc21_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              addr611:
                                                                                                                              §§push(_loc16_.x);
                                                                                                                              if(!_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc18_);
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc21_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             addr632:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc22_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr640:
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   addr643:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc22_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      addr651:
                                                                                                                                                      §§push(_loc15_.y);
                                                                                                                                                      if(_loc21_)
                                                                                                                                                      {
                                                                                                                                                         addr655:
                                                                                                                                                         §§push(_loc17_.y);
                                                                                                                                                         if(!_loc22_)
                                                                                                                                                         {
                                                                                                                                                            addr659:
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            if(_loc21_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr673:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!(_loc22_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr681:
                                                                                                                                                                        §§push(_loc16_.y);
                                                                                                                                                                        if(_loc21_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc21_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              addr698:
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              addr704:
                                                                                                                                                                              §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                              if(_loc21_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr713:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc21_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr733:
                                                                                                                                                                                    return Number(§§pop());
                                                                                                                                                                                    addr732:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr732);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr733);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr704);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr704);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr673);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr698);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr713);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr698);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr640);
                                                                                                                                 }
                                                                                                                                 §§goto(addr655);
                                                                                                                              }
                                                                                                                              §§goto(addr698);
                                                                                                                           }
                                                                                                                           §§goto(addr643);
                                                                                                                        }
                                                                                                                        §§goto(addr681);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                  }
                                                                                                                  §§goto(addr659);
                                                                                                               }
                                                                                                               §§goto(addr698);
                                                                                                            }
                                                                                                            §§goto(addr611);
                                                                                                         }
                                                                                                         §§goto(addr651);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr733);
                                                                                                }
                                                                                                §§goto(addr643);
                                                                                             }
                                                                                             §§goto(addr589);
                                                                                          }
                                                                                          §§goto(addr547);
                                                                                       }
                                                                                       §§goto(addr733);
                                                                                    }
                                                                                    §§goto(addr563);
                                                                                 }
                                                                                 §§goto(addr651);
                                                                              }
                                                                              §§goto(addr530);
                                                                           }
                                                                           §§goto(addr555);
                                                                        }
                                                                        §§goto(addr733);
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                               §§goto(addr424);
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      addr358:
                                                      §§goto(addr369);
                                                   }
                                                }
                                                §§goto(addr337);
                                             }
                                             §§goto(addr196);
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr91);
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr91);
         }
         §§goto(addr42);
      }
      
      public function §`J§() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §+K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            b2internal::+d.SetAwake(true);
         }
         do
         {
            b2internal::"!l.SetAwake(true);
            do
            {
               this.§!!$§ = param1;
            }
            while(_loc3_ && param1);
            
         }
         while(!_loc2_);
         
      }
      
      public function §2z§() : Number
      {
         return this.§""@§;
      }
      
      public function §5!V§() : Number
      {
         return this.§=" §;
      }
      
      public function §7!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            b2internal::+d.SetAwake(true);
            loop0:
            while(true)
            {
               b2internal::"!l.SetAwake(true);
               while(true)
               {
                  this.§""@§ = param1;
                  loop2:
                  while(_loc3_ || _loc3_)
                  {
                     while(true)
                     {
                        this.§=" § = param2;
                        if(_loc3_)
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
      
      public function §%!o§() : Boolean
      {
         return this.§ !P§;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::+d.SetAwake(true);
         }
         while(true)
         {
            b2internal::"!l.SetAwake(true);
            while(_loc3_)
            {
               this.§ !P§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §97§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::+d.SetAwake(true);
            while(true)
            {
               b2internal::"!l.SetAwake(true);
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§?!,§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §,;§() : Number
      {
         return this.§?!,§;
      }
      
      public function §%M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            b2internal::+d.SetAwake(true);
            while(true)
            {
               b2internal::"!l.SetAwake(true);
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§<6§ = param1;
            if(_loc3_)
            {
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]R§() : Number
      {
         return this.§<6§;
      }
      
      public function §1"4§() : Number
      {
         return this.§`t§;
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
