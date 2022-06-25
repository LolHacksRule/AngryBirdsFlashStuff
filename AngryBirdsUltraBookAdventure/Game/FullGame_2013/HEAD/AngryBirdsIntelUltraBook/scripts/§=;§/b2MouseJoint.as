package §=;§
{
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Vec2;
   import §>!L§.b2Body;
   import §>!L§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §'!§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §>!1§:b2Vec2;
      
      private var §2!N§:b2Vec2;
      
      private var §;D§:b2Vec2;
      
      private var §@U§:b2Mat22;
      
      private var §?,§:b2Vec2;
      
      private var §,&§:Number;
      
      private var §!!@§:Number;
      
      private var §-e§:Number;
      
      private var §0!@§:Number;
      
      private var §<!'§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc6_ || _loc2_)
         {
            this.§'!§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(_loc6_)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§>!1§ = new b2Vec2();
                     while(true)
                     {
                        this.§2!N§ = new b2Vec2();
                        while(_loc6_)
                        {
                           if(_loc6_)
                           {
                              this.§;D§ = new b2Vec2();
                              while(_loc6_ || _loc3_)
                              {
                                 continue loop2;
                                 addr64:
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§2!N§);
                                       if(_loc6_ || param1)
                                       {
                                          §§pop().SetV(param1.target);
                                          addr107:
                                          while(!_loc5_)
                                          {
                                             §§push(this.§2!N§);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr198:
                                                   §§push(§§pop() - §`x§.m_xf.position.x);
                                                   if(_loc6_)
                                                   {
                                                      addr51:
                                                      §§push(Number(§§pop()));
                                                      if(!_loc5_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_ && this)
                                                         {
                                                            break loop9;
                                                         }
                                                         §§goto(addr64);
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   _loc4_ = §`x§.m_xf.R;
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§>!1§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(_loc4_.col1.x);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  addr348:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_.col1.y);
                                                                     addr351:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr347:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            addr352:
                                                         }
                                                         addr353:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr268);
                                                }
                                                §§goto(addr51);
                                             }
                                             §§push(§§pop().y);
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(§§pop() - §`x§.m_xf.position.y);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr51);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr51);
                                          }
                                          while(true)
                                          {
                                             super(param1);
                                             break loop9;
                                          }
                                          addr107:
                                       }
                                       §§goto(addr181);
                                    }
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr73);
                                       §§goto(addr57);
                                    }
                                    addr73:
                                    while(true)
                                    {
                                       this.§?,§ = new b2Vec2();
                                       §§goto(addr107);
                                       §§goto(addr94);
                                    }
                                    addr94:
                                    addr113:
                                 }
                                 §§goto(addr181);
                                 §§push(this.§2!N§);
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§2!N§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return §`x§.GetWorldPoint(this.§>!1§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;D§.x);
            if(_loc3_ || this)
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() * this.§;D§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §]!_§() : b2Vec2
      {
         return this.§2!N§;
      }
      
      public function §;!?§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§`x§.IsAwake() == false)
            {
               if(_loc3_ || _loc3_)
               {
                  §`x§.SetAwake(true);
                  addr73:
                  while(true)
                  {
                  }
                  addr73:
               }
               §§goto(addr73);
            }
            while(true)
            {
               this.§2!N§ = param1;
               if(_loc3_ || param1)
               {
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §1D§() : Number
      {
         return this.§,&§;
      }
      
      public function §>n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,&§ = param1;
         }
      }
      
      public function §<V§() : Number
      {
         return this.§!!@§;
      }
      
      public function §<7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§!!@§ = param1;
         }
      }
      
      public function §7"§() : Number
      {
         return this.§-e§;
      }
      
      public function § C§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-e§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = §`x§;
         §§push(_loc2_.GetMass());
         if(!(_loc13_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!(_loc13_ && this))
         {
            §§push(§§pop() * this.§!!@§);
            if(!(_loc13_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(!(_loc13_ && this))
         {
            §§push(this.§-e§);
            if(_loc14_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc14_ || _loc3_)
               {
                  addr91:
                  §§push(§§pop() * _loc4_);
                  if(_loc14_ || param1)
                  {
                     addr99:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_);
               if(!(_loc13_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(!_loc13_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc13_)
                     {
                        addr116:
                        §§push(§§pop() * _loc4_);
                        if(_loc13_)
                        {
                        }
                        addr120:
                        var _loc6_:* = §§pop();
                        if(!(_loc13_ && _loc2_))
                        {
                           §§push(this);
                           §§push(param1.§`M§);
                           if(_loc14_)
                           {
                              §§push(_loc5_);
                              if(_loc14_ || _loc2_)
                              {
                                 §§push(param1.§`M§);
                                 if(_loc14_ || param1)
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§<!'§ = §§pop();
                           loop0:
                           while(true)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this);
                                 if(_loc14_ || this)
                                 {
                                    §§push(this.§<!'§);
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(§§pop() == 0);
                                       if(_loc14_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          addr178:
                                          §§push(1 / this.§<!'§);
                                          if(!_loc13_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr191:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc14_)
                                          {
                                             §§goto(addr191);
                                          }
                                       }
                                       §§pop().§<!'§ = §§pop();
                                       do
                                       {
                                          if(!_loc14_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this);
                                          §§push(param1.§`M§);
                                          if(!_loc13_)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc13_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc14_)
                                                {
                                                   continue;
                                                }
                                                addr141:
                                                §§push(this.§<!'§);
                                             }
                                             §§push(§§pop() * §§pop());
                                             continue;
                                          }
                                          §§goto(addr141);
                                       }
                                       while(§§pop().§0!@§ = §§pop(), !(_loc14_ || _loc2_));
                                       
                                       while(false)
                                       {
                                          continue loop1;
                                       }
                                       _loc7_ = _loc2_.m_xf.R;
                                       §§push(this.§>!1§.x);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                          if(_loc14_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(this.§>!1§.y);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                          if(!(_loc13_ && _loc2_))
                                          {
                                             addr265:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc9_:* = §§pop();
                                          §§push(_loc7_.col1.x);
                                          if(_loc14_)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc13_ && _loc2_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc14_)
                                                {
                                                   addr283:
                                                   §§push(_loc7_.col2.x);
                                                   if(!_loc13_)
                                                   {
                                                      addr290:
                                                      §§push(§§pop() + §§pop() * _loc9_);
                                                      if(_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   §§goto(addr290);
                                                }
                                                var _loc10_:* = §§pop();
                                                if(_loc14_)
                                                {
                                                   §§push(_loc7_.col1);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().y);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!_loc13_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc14_ || _loc2_)
                                                            {
                                                               §§push(_loc7_.col2.y);
                                                               if(!_loc13_)
                                                               {
                                                                  addr1120:
                                                                  §§push(§§pop() + §§pop() * _loc9_);
                                                               }
                                                               §§goto(addr1120);
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop9:
                                                                     for(; !_loc13_; while(true)
                                                                     {
                                                                        if(_loc14_ || _loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop9;
                                                                     },continue loop5)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           addr1098:
                                                                           addr1043:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§=n§);
                                                                              addr1058:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                           if(!(_loc14_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr1051:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc14_)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.K1);
                                                                                 addr1020:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().col1);
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr442:
                                                                                 if(!(_loc14_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc2_);
                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(_loc12_);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          §§push(this.§;D§.y);
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr340:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                if(_loc14_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§;D§.x);
                                                                                                }
                                                                                             }
                                                                                             §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(_loc14_ || this)
                                                                                                {
                                                                                                   addr352:
                                                                                                   if(_loc14_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc14_ || this)
                                                                                                      {
                                                                                                         if(_loc13_ && _loc2_)
                                                                                                         {
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.K2);
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().col1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(_loc14_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        addr969:
                                                                                                                     }
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              loop37:
                                                                                                                              while(!(_loc13_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    §§push(this.K2);
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().col2);
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(_loc14_)
                                                                                                                                             {
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   loop40:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                      {
                                                                                                                                                         loop94:
                                                                                                                                                         while(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            loop95:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr947:
                                                                                                                                                               loop41:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(_loc14_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.K2);
                                                                                                                                                                     loop43:
                                                                                                                                                                     for(; _loc14_; while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.K2);
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop43;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr865);
                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                        §§goto(addr467);
                                                                                                                                                                     },continue loop31)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().col1);
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              while(!(_loc13_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc14_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                                addr910:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             while(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          break loop42;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr900:
                                                                                                                                                                                       addr1008:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr913:
                                                                                                                                                                                    while(!_loc13_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc13_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§<!'§);
                                                                                                                                                                                 if(_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr821:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             loop61:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§'!§);
                                                                                                                                                                                                loop62:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc13_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().col2);
                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc14_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§'!§.col2.y);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§<!'§);
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc14_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop95;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                                                                           addr749:
                                                                                                                                                                                                                           if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                                                                           while(_loc14_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop62;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§'!§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().§<+§(this.K1);
                                                                                                                                                                                                                                 addr842:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc13_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop42;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc13_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(this.§'!§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().§!!h§(this.K2);
                                                                                                                                                                                                                                       addr832:
                                                                                                                                                                                                                                       while(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§'!§);
                                                                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1098);
                                                                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                                 addr686:
                                                                                                                                                                                                                                 if(!(_loc14_ || _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§0!A§(this.§@U§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§?,§);
                                                                                                                                                                                                                                    loop65:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc2_.m_sweep);
                                                                                                                                                                                                                                       addr662:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().c);
                                                                                                                                                                                                                                          addr663:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr673:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§2!N§);
                                                                                                                                                                                                                                                      addr675:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         addr676:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr672:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr677:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop95;
                                                                                                                                                                                                                     addr867:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     addr872:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        §§goto(addr873);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr866:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr867);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr872);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr749);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr865:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr866);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr828);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr998:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      break loop94;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr713);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1014:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                   break loop39;
                                                                                                                                                                                                }
                                                                                                                                                                                                loop75:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc13_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§;D§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§;D§);
                                                                                                                                                                                                      addr534:
                                                                                                                                                                                                      addr556:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                         addr535:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1.§&s§);
                                                                                                                                                                                                            addr537:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr538:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                  continue loop75;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§;D§);
                                                                                                                                                                                                      if(!(_loc14_ || this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§;D§);
                                                                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                         if(_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1.§&s§);
                                                                                                                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr507:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc14_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc13_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc13_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc2_.§4!h§);
                                                                                                                                                                                                                              loop83:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc2_.§4!h§);
                                                                                                                                                                                                                                 addr455:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    addr456:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§;D§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             addr462:
                                                                                                                                                                                                                                             addr420:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(this.§;D§);
                                                                                                                                                                                                                                             if(_loc13_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                             if(!(_loc13_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr439:
                                                                                                                                                                                                                                                §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                addr438:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr442);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr832);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                                                                                addr440:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr462);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                addr464:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   addr465:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc14_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr467:
                                                                                                                                                                                                                                                         if(_loc14_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop83;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr647);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr462);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr463:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr463);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr697);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr678);
                                                                                                                                                                                                                        §§goto(addr352);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr759);
                                                                                                                                                                                                                     addr522:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr535);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr538);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr537);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr507);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr534);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr842);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr969);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr897);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr913);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr910);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 addr1030:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.K1);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1014);
                                                                                                                                                                                       addr988:
                                                                                                                                                                                       §§push(§§pop().col2);
                                                                                                                                                                                       if(!(_loc14_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr998);
                                                                                                                                                                                          §§push(§§pop().col2);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1020);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr889);
                                                                                                                                                                              }
                                                                                                                                                                              addr889:
                                                                                                                                                                              addr1029:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr900);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  loop27:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.K1);
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr988);
                                                                                                                                                                     }
                                                                                                                                                                     addr1006:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1007);
                                                                                                                                                                        continue loop27;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1020);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            continue loop30;
                                                                                                                                                         }
                                                                                                                                                         addr943:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr947);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr943);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          break loop37;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1030);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1006);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         return;
                                                                                                         addr373:
                                                                                                      }
                                                                                                      §§goto(addr539);
                                                                                                   }
                                                                                                   §§goto(addr522);
                                                                                                }
                                                                                                §§goto(addr465);
                                                                                             }
                                                                                             §§goto(addr440);
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr1058);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               if(!(_loc14_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc13_ && _loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               _loc11_ = §§pop();
                                                               §§goto(addr1081);
                                                            }
                                                         }
                                                         §§goto(addr1120);
                                                      }
                                                   }
                                                }
                                                §§goto(addr373);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr265);
                                       addr152:
                                    }
                                    §§goto(addr191);
                                 }
                                 §§goto(addr178);
                              }
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr120);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr116);
            }
            §§goto(addr91);
         }
         §§goto(addr99);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = §`x§;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§>!1§.x);
         if(_loc15_ || param1)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc15_ || this)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§>!1§.y);
            if(_loc15_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(_loc15_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(!_loc16_)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc15_ || _loc2_)
                  {
                     §§push(_loc6_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                     }
                     addr181:
                  }
                  addr182:
                  while(true)
                  {
                     §§push(_loc3_.col2);
                     addr184:
                     while(true)
                     {
                        §§push(§§pop().x);
                        if(!_loc16_)
                        {
                           §§push(_loc7_);
                           do
                           {
                              §§push(§§pop() * §§pop());
                           }
                           while(_loc15_);
                           
                           addr219:
                           §§push(§§pop() + §§pop() * _loc7_);
                           if(_loc15_ || _loc3_)
                           {
                              addr229:
                              §§push(Number(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           §§push(_loc2_.§4!h§.y);
                           if(!_loc16_)
                           {
                              §§push(_loc2_.m_angularVelocity);
                              if(!(_loc16_ && _loc2_))
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc16_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           _loc3_ = this.§@U§;
                           if(!_loc16_)
                           {
                              §§push(_loc8_);
                              if(_loc15_ || _loc3_)
                              {
                                 §§push(this.§0!@§);
                                 if(_loc15_ || _loc3_)
                                 {
                                    §§push(this.§?,§);
                                    if(_loc15_ || this)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc16_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc15_ || _loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc15_)
                                             {
                                                §§push(this.§<!'§);
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§push(this.§;D§);
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc15_ || this)
                                                      {
                                                         addr329:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc15_)
                                                         {
                                                            addr332:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc16_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc16_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(_loc15_ || _loc2_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!_loc16_)
                                                                     {
                                                                        §§push(this.§0!@§);
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr358:
                                                                           §§push(this.§?,§.y);
                                                                           if(!(_loc16_ && _loc3_))
                                                                           {
                                                                              addr368:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc15_ || this)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr379:
                                                                                    §§push(this.§<!'§);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr383:
                                                                                       §§push(this.§;D§.y);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr388:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             addr391:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc15_ || _loc2_)
                                                                                                {
                                                                                                   addr417:
                                                                                                   _loc5_ = §§pop();
                                                                                                   §§push(_loc3_.col1.x);
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      addr428:
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            addr434:
                                                                                                            §§push(_loc3_.col2.x);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               addr441:
                                                                                                               addr439:
                                                                                                               addr440:
                                                                                                               §§push(§§pop() + §§pop() * _loc5_);
                                                                                                               if(_loc15_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr453:
                                                                                                                  var _loc10_:* = §§pop();
                                                                                                                  §§push(_loc3_.col1.y);
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           addr470:
                                                                                                                           §§push(_loc3_.col2.y);
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              addr475:
                                                                                                                              §§push(§§pop() * _loc5_);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc15_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        var _loc11_:* = §§pop();
                                                                                                                        §§push(this.§;D§.x);
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc12_:* = §§pop();
                                                                                                                        §§push(this.§;D§.y);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        var _loc13_:* = §§pop();
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           §§push(this.§;D§);
                                                                                                                           if(_loc15_ || param1)
                                                                                                                           {
                                                                                                                              §§push(this.§;D§);
                                                                                                                              if(_loc15_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    if(_loc15_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr565:
                                                                                                                                             addr555:
                                                                                                                                             addr553:
                                                                                                                                             §§push(this.§;D§);
                                                                                                                                             §§push(this.§;D§.y);
                                                                                                                                             if(!(_loc16_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(_loc11_);
                                                                                                                                             }
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             addr566:
                                                                                                                                             §§push(param1.§`M§);
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§,&§);
                                                                                                                                                if(!(_loc16_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc14_:* = §§pop();
                                                                                                                                             if(_loc15_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§;D§);
                                                                                                                                                loop12:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().§3!M§());
                                                                                                                                                   loop13:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      loop14:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * _loc14_);
                                                                                                                                                         loop15:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§;D§);
                                                                                                                                                                  addr815:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / this.§;D§.§[!K§());
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§2p§(§§pop());
                                                                                                                                                                     addr824:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr813:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§;D§);
                                                                                                                                                               loop20:
                                                                                                                                                               for(; !_loc16_; §§push(this.§;D§),if(!(_loc15_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               },§§push(§§pop().y),if(_loc15_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc15_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc15_ || param1))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop13;
                                                                                                                                                                              }
                                                                                                                                                                              addr771:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                 loop26:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc2_.§4!h§);
                                                                                                                                                                                       loop27:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_.§4!h§);
                                                                                                                                                                                          addr718:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr719:
                                                                                                                                                                                             loop29:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§=n§);
                                                                                                                                                                                                if(_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr685:
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(!(_loc15_ || _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr726:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr725:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr726);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr803);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr824);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr785);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr801);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr802);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr771);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr796);
                                                                                                                                                               },§§goto(addr771))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     addr796:
                                                                                                                                                                     while(!_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr802:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              addr803:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr813);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop12;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr815);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                          §§goto(addr566);
                                                                                                                                       }
                                                                                                                                       §§goto(addr565);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 §§goto(addr565);
                                                                                                                              }
                                                                                                                              §§goto(addr555);
                                                                                                                           }
                                                                                                                           §§goto(addr553);
                                                                                                                        }
                                                                                                                        §§goto(addr565);
                                                                                                                     }
                                                                                                                     §§goto(addr475);
                                                                                                                  }
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                         §§goto(addr453);
                                                                                                      }
                                                                                                      §§goto(addr439);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr434);
                                                                                             }
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                          §§goto(addr441);
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                    }
                                                                                    §§goto(addr441);
                                                                                 }
                                                                                 §§goto(addr434);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr388);
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                     §§goto(addr379);
                                                                  }
                                                                  §§goto(addr417);
                                                               }
                                                            }
                                                            §§goto(addr417);
                                                         }
                                                         §§goto(addr391);
                                                      }
                                                      §§goto(addr368);
                                                   }
                                                }
                                                §§goto(addr383);
                                             }
                                             §§goto(addr428);
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr329);
                                    }
                                    §§goto(addr358);
                                 }
                                 §§goto(addr332);
                              }
                              §§goto(addr379);
                           }
                           §§goto(addr417);
                           addr188:
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc15_ || param1)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 addr201:
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                              addr200:
                           }
                           else
                           {
                              §§goto(addr229);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr207);
         }
         §§goto(addr54);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
