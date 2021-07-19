package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Mat33;
   import §<!a§.b2Math;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<!a§.b2Vec3;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §01§:b2Vec2;
      
      private var §<"+§:b2Vec2;
      
      private var §<X§:Number;
      
      private var §+u§:b2Vec2;
      
      private var §4!-§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §<"6§:b2Mat33;
      
      private var §5!i§:b2Vec3;
      
      private var §>E§:Number;
      
      private var §`t§:Number;
      
      private var §""@§:Number;
      
      private var §=" §:Number;
      
      private var §<6§:Number;
      
      private var §?!,§:Number;
      
      private var §!!$§:Boolean;
      
      private var § !P§:Boolean;
      
      private var §<!3§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.m_localAnchor1 = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§01§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§<"+§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§+u§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§4!-§ = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              this.§<"6§ = new b2Mat33();
                              loop6:
                              while(true)
                              {
                                 this.§5!i§ = new b2Vec3();
                                 while(true)
                                 {
                                    super(param1);
                                    while(_loc6_ || _loc2_)
                                    {
                                       if(_loc6_)
                                       {
                                          this.m_localAnchor1.SetV(param1.§3!&§);
                                          continue loop2;
                                       }
                                       continue loop1;
                                       loop27:
                                       while(!(_loc5_ && this))
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          this.§ !P§ = param1.§#a§;
                                          loop28:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                this.§<!3§ = b2internal::^#;
                                                loop29:
                                                for(; !_loc5_; while(true)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      continue loop27;
                                                   }
                                                   continue loop29;
                                                   addr88:
                                                   this.§4!-§.§?b§();
                                                   if(_loc6_)
                                                   {
                                                      continue loop28;
                                                   }
                                                },loop25:
                                                while(true)
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§!!$§ = param1.§2<§;
                                                            continue loop27;
                                                         }
                                                         return;
                                                         addr60:
                                                         addr142:
                                                      }
                                                      break;
                                                   }
                                                   addr154:
                                                   while(!(_loc5_ && _loc2_))
                                                   {
                                                      this.§<6§ = param1.§<!S§;
                                                      while(true)
                                                      {
                                                         this.§?!,§ = param1.motorSpeed;
                                                         continue loop25;
                                                      }
                                                      continue loop25;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§<X§ = param1.§ "2§;
                                                      addr207:
                                                      addr256:
                                                      while(_loc6_ || this)
                                                      {
                                                         this.§5!i§.§?b§();
                                                         break loop25;
                                                      }
                                                      while(!_loc5_)
                                                      {
                                                         §§push(this.§<"+§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this.§01§);
                                                            addr246:
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
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      continue loop6;
                                                      §§goto(addr154);
                                                   }
                                                },while(true)
                                                {
                                                   this.§>E§ = 0;
                                                   §§goto(addr196);
                                                })
                                                {
                                                   addr95:
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         this.§+u§.§?b§();
                                                         continue;
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr196:
                                                   while(true)
                                                   {
                                                      this.§`t§ = 0;
                                                      break loop29;
                                                      §§goto(addr95);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§""@§ = param1.§?"'§;
                                                   break loop28;
                                                }
                                             }
                                             break;
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr46:
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§=" § = param1.§-!§;
                                                   §§goto(addr154);
                                                }
                                                break;
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr249);
                                          if(_loc5_ && this)
                                          {
                                             continue;
                                          }
                                          §§goto(addr79);
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
         §§goto(addr142);
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
         if(_loc2_)
         {
            §§push(this.§5!i§.x);
            if(_loc2_)
            {
               §§push(this.§4!-§.x);
               if(_loc2_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§`t§);
                     if(!_loc3_)
                     {
                        §§push(this.§5!i§.z);
                        if(_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && param1))
                           {
                              addr60:
                              §§push(this.§+u§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && param1))
                                    {
                                       addr92:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                       §§goto(addr161);
                                    }
                                    §§push(this.§5!i§.x);
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(this.§4!-§.y);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc2_)
                                          {
                                             addr123:
                                             §§push(this.§`t§);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(this.§5!i§.z);
                                                if(!_loc3_)
                                                {
                                                   addr159:
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr155:
                                                      §§push(this.§+u§.y);
                                                   }
                                                   addr161:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() * (§§pop() + §§pop()));
                                                }
                                                §§goto(addr159);
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr161);
               }
               §§goto(addr159);
            }
            §§goto(addr161);
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
            return §§pop() * this.§5!i§.y;
         }
      }
      
      public function §>!b§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
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
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§!!7§(this.§01§)).x);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && _loc2_))
                  {
                     §§push(_loc8_.y);
                     if(_loc10_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc10_ || _loc3_)
                        {
                           addr103:
                           §§push(§§pop() + §§pop());
                           if(_loc10_ || _loc1_)
                           {
                              addr122:
                              §§push(Number(§§pop()));
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr122);
                        }
                        var _loc9_:* = §§pop();
                        return §§pop();
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr122);
               }
               §§goto(addr103);
            }
            §§goto(addr122);
         }
         §§goto(addr46);
      }
      
      public function §&!8§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+d;
         var _loc2_:b2Body = b2internal::"!l;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(this.m_localAnchor1.y);
         if(!(_loc21_ && this))
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
            if(_loc22_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(_loc3_.col1.x);
         if(_loc22_)
         {
            §§push(_loc4_);
            if(!(_loc21_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(_loc22_)
               {
                  §§push(_loc3_.col2.x);
                  if(!_loc21_)
                  {
                     addr92:
                     §§push(§§pop() + §§pop() * _loc5_);
                     if(_loc21_)
                     {
                     }
                     var _loc6_:* = §§pop();
                     if(_loc22_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc22_ || _loc2_)
                        {
                           §§push(_loc4_);
                           if(_loc22_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc22_ || _loc2_)
                              {
                                 addr120:
                                 §§push(_loc3_.col2.y);
                                 if(_loc22_ || _loc2_)
                                 {
                                    addr132:
                                    §§push(§§pop() + §§pop() * _loc5_);
                                    if(_loc22_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc22_ || _loc1_)
                                       {
                                          addr143:
                                          _loc5_ = §§pop();
                                          addr156:
                                          if(_loc22_ || this)
                                          {
                                             §§push(_loc6_);
                                             if(_loc22_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = _loc2_.m_xf.R;
                                          §§push(this.m_localAnchor2.x);
                                          if(_loc22_)
                                          {
                                             §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                             if(!_loc21_)
                                             {
                                                addr173:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc7_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(_loc22_ || _loc1_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                if(!(_loc21_ && _loc1_))
                                                {
                                                   addr197:
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
                                                      if(!(_loc21_ && this))
                                                      {
                                                         §§push(_loc7_);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc22_ || _loc1_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc3_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr326:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  addr327:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr328:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr329:
                                                                        addr365:
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc21_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop0;
                                                                              addr214:
                                                                              if(!(_loc21_ && _loc1_))
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc1_.m_sweep.c.x);
                                                                                    if(_loc22_ || this)
                                                                                    {
                                                                                       addr355:
                                                                                       §§push(§§pop() + _loc4_);
                                                                                       if(!(_loc21_ && _loc1_))
                                                                                       {
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop6;
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                                 break loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr365:
                                                                        var _loc9_:* = §§pop();
                                                                        §§push(_loc1_.m_sweep.c.y);
                                                                        if(!_loc21_)
                                                                        {
                                                                           §§push(§§pop() + _loc5_);
                                                                           if(_loc22_ || _loc1_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        var _loc10_:* = §§pop();
                                                                        §§push(_loc2_.m_sweep.c.x);
                                                                        if(!(_loc21_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + _loc7_);
                                                                           if(_loc22_)
                                                                           {
                                                                              addr398:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc2_.m_sweep.c.y);
                                                                           if(!(_loc21_ && this))
                                                                           {
                                                                              §§push(§§pop() + _loc8_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 addr415:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc11_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 §§push(§§pop() - _loc9_);
                                                                                 if(!(_loc21_ && _loc3_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                              var _loc13_:* = §§pop();
                                                                              §§push(_loc12_);
                                                                              if(!(_loc21_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() - _loc10_);
                                                                                 if(!(_loc21_ && _loc2_))
                                                                                 {
                                                                                    addr448:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc14_:* = §§pop();
                                                                                 var _loc15_:b2Vec2 = _loc1_.§!!7§(this.§01§);
                                                                                 var _loc16_:b2Vec2 = _loc1_.§]!g§;
                                                                                 var _loc17_:b2Vec2 = _loc2_.§]!g§;
                                                                                 §§push(_loc1_.m_angularVelocity);
                                                                                 if(!_loc21_)
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
                                                                                 if(_loc22_)
                                                                                 {
                                                                                    §§push(_loc18_);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(_loc22_)
                                                                                       {
                                                                                          §§push(_loc15_.y);
                                                                                          if(!_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc22_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc22_)
                                                                                                {
                                                                                                   §§push(_loc14_);
                                                                                                   if(_loc22_ || _loc2_)
                                                                                                   {
                                                                                                      addr508:
                                                                                                      §§push(_loc18_);
                                                                                                      if(_loc22_ || _loc2_)
                                                                                                      {
                                                                                                         addr516:
                                                                                                         §§push(_loc15_.x);
                                                                                                         if(_loc22_ || _loc1_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc21_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc21_)
                                                                                                               {
                                                                                                                  addr531:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     addr534:
                                                                                                                     §§push(_loc15_.x);
                                                                                                                     if(_loc22_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr543:
                                                                                                                        §§push(_loc17_.x);
                                                                                                                        if(!(_loc21_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc19_);
                                                                                                                           if(!(_loc21_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 if(_loc22_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc22_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc22_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr582:
                                                                                                                                          §§push(_loc16_.x);
                                                                                                                                          if(!(_loc21_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc22_)
                                                                                                                                             {
                                                                                                                                                addr594:
                                                                                                                                                §§push(_loc18_);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   addr597:
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      addr600:
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(!(_loc21_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                            addr611:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc22_)
                                                                                                                                                               {
                                                                                                                                                                  addr617:
                                                                                                                                                                  §§push(_loc15_.y);
                                                                                                                                                                  if(_loc22_)
                                                                                                                                                                  {
                                                                                                                                                                     addr621:
                                                                                                                                                                     §§push(_loc17_.y);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        if(_loc22_ || _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc22_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr644:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc22_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_.y);
                                                                                                                                                                                    if(_loc22_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc22_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr669:
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr675);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr675:
                                                                                                                                                                                       §§push(§§pop() + §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                       if(_loc21_ && _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr699);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr669);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc4_);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr699);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr669);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr644);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr669);
                                                                                                                                             }
                                                                                                                                             §§goto(addr621);
                                                                                                                                          }
                                                                                                                                          §§goto(addr597);
                                                                                                                                       }
                                                                                                                                       §§goto(addr594);
                                                                                                                                    }
                                                                                                                                    §§goto(addr669);
                                                                                                                                 }
                                                                                                                                 §§goto(addr644);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr611);
                                                                                                                        }
                                                                                                                        §§goto(addr582);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr697);
                                                                                                               }
                                                                                                               §§goto(addr617);
                                                                                                            }
                                                                                                            §§goto(addr669);
                                                                                                         }
                                                                                                         §§goto(addr600);
                                                                                                      }
                                                                                                      §§goto(addr621);
                                                                                                   }
                                                                                                   addr699:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc22_)
                                                                                                   {
                                                                                                      addr697:
                                                                                                      return Number(§§pop());
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr697);
                                                                                             }
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          §§goto(addr516);
                                                                                       }
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    §§goto(addr508);
                                                                                 }
                                                                                 §§goto(addr534);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr415);
                                                                        }
                                                                        §§goto(addr398);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr315:
                                                      }
                                                      addr364:
                                                      §§goto(addr365);
                                                   }
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr173);
                                       }
                                       _loc4_ = §§pop();
                                       §§goto(addr156);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr143);
                  }
               }
               §§goto(addr92);
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr92);
      }
      
      public function §`J§() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §+K§(param1:Boolean) : void
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
            while(_loc3_ || _loc3_)
            {
               this.§!!$§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
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
            do
            {
               b2internal::"!l.SetAwake(true);
               do
               {
                  this.§""@§ = param1;
                  do
                  {
                     this.§=" § = param2;
                  }
                  while(_loc4_);
                  
               }
               while(_loc4_ && param1);
               
            }
            while(_loc4_);
            
         }
      }
      
      public function §%!o§() : Boolean
      {
         return this.§ !P§;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::+d.SetAwake(true);
         }
         while(true)
         {
            b2internal::"!l.SetAwake(true);
            while(!(_loc3_ && _loc3_))
            {
               this.§ !P§ = param1;
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §97§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::+d.SetAwake(true);
            while(true)
            {
               b2internal::"!l.SetAwake(true);
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§?!,§ = param1;
            if(_loc2_ || _loc2_)
            {
               if(!_loc3_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::+d.SetAwake(true);
         }
         while(true)
         {
            b2internal::"!l.SetAwake(true);
            while(!(_loc3_ && param1))
            {
               this.§<6§ = param1;
               if(_loc2_ || param1)
               {
                  return;
               }
            }
         }
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
