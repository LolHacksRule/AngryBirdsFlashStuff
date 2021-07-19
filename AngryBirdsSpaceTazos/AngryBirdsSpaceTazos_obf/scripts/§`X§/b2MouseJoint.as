package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §&z§:b2Vec2;
      
      private var §]6§:b2Vec2;
      
      private var §0"3§:b2Vec2;
      
      private var §""$§:b2Mat22;
      
      private var §]E§:b2Vec2;
      
      private var §"!C§:Number;
      
      private var §4"3§:Number;
      
      private var §0R§:Number;
      
      private var §+""§:Number;
      
      private var §"!U§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc6_ || this)
         {
            this.K = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(!(_loc5_ && _loc3_))
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§&z§ = new b2Vec2();
                     while(true)
                     {
                        this.§]6§ = new b2Vec2();
                        while(_loc6_)
                        {
                           this.§0"3§ = new b2Vec2();
                           loop5:
                           while(_loc6_ || this)
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 this.§""$§ = new b2Mat22();
                                 loop7:
                                 while(true)
                                 {
                                    this.§]E§ = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       super(param1);
                                       loop9:
                                       while(true)
                                       {
                                          addr70:
                                          while(true)
                                          {
                                             §§push(this.§]6§);
                                             addr73:
                                             while(true)
                                             {
                                                §§pop().SetV(param1.target);
                                                addr76:
                                                addr169:
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop9;
                                                }
                                                addr169:
                                                §§push(§§pop().y);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - b2internal::?H.m_xf.position.y);
                                                   if(!_loc5_)
                                                   {
                                                      addr189:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc3_:* = §§pop();
                                                   _loc4_ = b2internal::?H.m_xf.R;
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr351:
                                                      §§push(this.§&z§);
                                                      §§push(_loc2_ * _loc4_.col1.x);
                                                      if(!_loc5_)
                                                      {
                                                         addr372:
                                                         §§push(§§pop() + _loc3_ * _loc4_.col1.y);
                                                      }
                                                      §§pop().x = §§pop();
                                                   }
                                                   addr374:
                                                   §§push(this.§&z§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc4_.col2.x);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(_loc4_.col2.y);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr336:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr339:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    this.§"!C§ = param1.§1^§;
                                                                                    addr347:
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       this.§0"3§.§@!d§();
                                                                                       this.§4"3§ = param1.§^J§;
                                                                                       this.§0R§ = param1.dampingRatio;
                                                                                       addr266:
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          this.§+""§ = 0;
                                                                                          this.§"!U§ = 0;
                                                                                          if(!(_loc5_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ && param1)
                                                                                                      {
                                                                                                         §§goto(addr347);
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr266);
                                                                                          }
                                                                                          addr247:
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       addr271:
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                           }
                                                                           §§goto(addr372);
                                                                        }
                                                                        §§goto(addr351);
                                                                     }
                                                                     §§goto(addr336);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr372);
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      §§goto(addr339);
                                                   }
                                                   §§goto(addr351);
                                                }
                                                §§goto(addr189);
                                             }
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
         }
         §§goto(addr128);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§]6§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.§&z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§0"3§.x);
            if(_loc3_ || _loc2_)
            {
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         addr52:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_)
         {
            addr55:
            §§push(§§pop() * this.§0"3§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §'!R§() : b2Vec2
      {
         return this.§]6§;
      }
      
      public function §=8§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(b2internal::?H.IsAwake() == false)
            {
               if(!_loc3_)
               {
                  b2internal::?H.SetAwake(true);
               }
               while(true)
               {
                  §§goto(addr38);
               }
            }
            addr38:
            §§goto(addr49);
         }
         addr49:
         while(true)
         {
            this.§]6§ = param1;
            if(_loc2_ || _loc3_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §#J§() : Number
      {
         return this.§"!C§;
      }
      
      public function §]!E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"!C§ = param1;
         }
      }
      
      public function §;!$§() : Number
      {
         return this.§4"3§;
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4"3§ = param1;
         }
      }
      
      public function §7!b§() : Number
      {
         return this.§0R§;
      }
      
      public function §&3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0R§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::?H;
         §§push(_loc2_.GetMass());
         if(_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(_loc13_ || _loc2_)
         {
            §§push(§§pop() * this.§4"3§);
            if(_loc13_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(!_loc14_)
            {
               §§push(this.§0R§);
               if(_loc13_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc14_ && _loc3_))
                  {
                     addr73:
                     §§push(§§pop() * _loc4_);
                     if(_loc13_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!(_loc14_ && this))
                  {
                     §§push(_loc4_);
                     if(_loc13_)
                     {
                        addr107:
                        §§push(§§pop() * §§pop());
                        if(!_loc14_)
                        {
                           §§push(_loc4_);
                        }
                        var _loc6_:* = §§pop();
                        if(!(_loc14_ && _loc2_))
                        {
                           §§push(this);
                           §§push(param1.§2^§);
                           if(!(_loc14_ && _loc3_))
                           {
                              §§push(_loc5_);
                              if(!_loc14_)
                              {
                                 §§push(param1.§2^§);
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(§§pop() * _loc6_);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§pop().§"!U§ = §§pop();
                        }
                        loop0:
                        while(true)
                        {
                           addr141:
                           addr212:
                           addr226:
                           while(true)
                           {
                              §§push(this);
                              if(!(_loc14_ && _loc2_))
                              {
                                 §§push(this.§"!U§);
                                 if(!_loc14_)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       addr156:
                                       §§push(1 / this.§"!U§);
                                       if(!_loc14_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc14_ && param1)
                                          {
                                             addr175:
                                             §§pop().§"!U§ = Number(§§pop());
                                             continue loop0;
                                          }
                                          §§goto(addr175);
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                       if(_loc13_)
                                       {
                                          §§goto(addr175);
                                       }
                                    }
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr156);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§&z§.x);
                           if(_loc13_ || param1)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(_loc13_ || _loc2_)
                              {
                                 addr239:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(this.§&z§.y);
                              if(!(_loc14_ && this))
                              {
                                 §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                 if(_loc13_)
                                 {
                                    addr258:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc9_:* = §§pop();
                                 §§push(_loc7_.col1.x);
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc14_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc13_)
                                       {
                                          addr281:
                                          §§push(_loc7_.col2.x);
                                          if(!_loc14_)
                                          {
                                             addr286:
                                             §§push(§§pop() * _loc9_);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             addr291:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(_loc7_.col1);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc14_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc7_.col2.y);
                                                         if(_loc13_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc9_);
                                                         }
                                                      }
                                                      addr1126:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc14_ && this))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop9:
                                                            while(!(_loc14_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(_loc13_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§6!W§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§<!%§);
                                                                              if(!(_loc14_ && this))
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr1083:
                                                                              if(!(_loc13_ || this))
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!_loc14_)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.K1);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().col1);
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.K1);
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().col2);
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.K1);
                                                                                                            loop24:
                                                                                                            while(_loc13_)
                                                                                                            {
                                                                                                               §§push(§§pop().col1);
                                                                                                               loop25:
                                                                                                               while(!_loc14_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     continue loop15;
                                                                                                                     loop34:
                                                                                                                     while(_loc13_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              loop37:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 loop38:
                                                                                                                                 while(_loc13_ || this)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    loop39:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(this.K2);
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().col2);
                                                                                                                                             loop41:
                                                                                                                                             while(!_loc14_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc12_);
                                                                                                                                                if(_loc13_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      addr969:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr970:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            addr971:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr704:
                                                                                                                                                      if(!(_loc13_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc14_)
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                      addr713:
                                                                                                                                                      §§push(this.§"!U§);
                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc13_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr730:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc14_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  loop67:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc14_)
                                                                                                                                                                     {
                                                                                                                                                                        addr747:
                                                                                                                                                                        §§push(this.K);
                                                                                                                                                                        if(_loc13_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr669:
                                                                                                                                                                           if(!(_loc13_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§-r§(this.§""$§);
                                                                                                                                                                           loop68:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§]E§);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc2_.m_sweep);
                                                                                                                                                                                 addr628:
                                                                                                                                                                                 addr658:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    addr629:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       addr630:
                                                                                                                                                                                       loop72:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          addr631:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc13_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§]6§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr642:
                                                                                                                                                                                                   addr599:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§]6§);
                                                                                                                                                                                                   if(_loc14_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr612:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!_loc14_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop72;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr642);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr643:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                loop77:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop47:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.K2);
                                                                                                                                                                                                      while(_loc13_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().col1);
                                                                                                                                                                                                         while(!_loc14_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop3;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                               loop50:
                                                                                                                                                                                                               while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                                                                  while(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop35;
                                                                                                                                                                                                                     if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr805:
                                                                                                                                                                                                                        if(_loc13_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc13_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop50;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc14_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop36;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.K);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop50;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr935:
                                                                                                                                                                                                                        addr935:
                                                                                                                                                                                                                        addr935:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                           addr936:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr805);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        addr938:
                                                                                                                                                                                                                        while(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop11;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop37;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop38;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr935);
                                                                                                                                                                                                            §§push(§§pop().col1);
                                                                                                                                                                                                            if(!(_loc13_ || _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc14_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.K.col1.x);
                                                                                                                                                                                                               if(_loc13_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§"!U§);
                                                                                                                                                                                                                  if(!(_loc14_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr790);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr936);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr798);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.K2);
                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                         if(!(_loc13_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc13_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().col2);
                                                                                                                                                                                                            loop56:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc13_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc13_ || _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                               if(!(_loc14_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     if(!(_loc14_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr901:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc14_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              loop59:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.K);
                                                                                                                                                                                                                                 loop60:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().§?"4§(this.K1);
                                                                                                                                                                                                                                    loop61:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.K);
                                                                                                                                                                                                                                       addr831:
                                                                                                                                                                                                                                       while(!_loc14_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().§@3§(this.K2);
                                                                                                                                                                                                                                          loop63:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.K);
                                                                                                                                                                                                                                             break loop67;
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc14_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop63;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop61;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc14_ && param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop8;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc2_);
                                                                                                                                                                                                                                                §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                                                                                                                   if(!(_loc14_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                                                                      if(_loc13_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§0"3§.y);
                                                                                                                                                                                                                                                         if(!_loc14_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr344:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc14_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr335:
                                                                                                                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr338:
                                                                                                                                                                                                                                                                  §§push(§§pop() * this.§0"3§.x);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                            if(!_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr357:
                                                                                                                                                                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc13_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop77;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop67;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr536:
                                                                                                                                                                                                                                                               while(_loc13_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§0"3§);
                                                                                                                                                                                                                                                                  loop80:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§0"3§);
                                                                                                                                                                                                                                                                     addr517:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                        addr518:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1.§-I§);
                                                                                                                                                                                                                                                                           addr520:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              addr521:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                 addr522:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop80;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop68;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop14;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr462);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr338);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr335);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr344);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop60;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr901:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr971);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr713);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr900:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                        addr1023:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.K2);
                                                                                                                                                                                                                           addr977:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr978);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1022:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr901);
                                                                                                                                                                                                               addr683:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().col2);
                                                                                                                                                                                                                  if(_loc14_ && _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop56;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.K.col2.y);
                                                                                                                                                                                                                  if(_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr704);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr972:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr730);
                                                                                                                                                                                                                  §§goto(addr747);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr969);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr977);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop40;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr642);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(this.§]E§);
                                                                                                                                                                                 if(_loc14_ && _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc2_.m_sweep);
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    if(!(_loc14_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(_loc13_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc13_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc14_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc14_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr599);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr643);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr612);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr631);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr609);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr612);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr629);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr628);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr629);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr683);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr827);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr753);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr831);
                                                                                                                                                                     §§goto(addr669);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr935);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr970);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr901);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr969);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr900);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr972);
                                                                                                                                             }
                                                                                                                                             addr1021:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1022);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1023);
                                                                                                                                    }
                                                                                                                                    continue loop23;
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.K1);
                                                                                                                  if(_loc13_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop20;
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
                                                                              else
                                                                              {
                                                                                 §§goto(addr1126);
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc14_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr1083);
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1041);
                                       }
                                       §§goto(addr291);
                                    }
                                    §§goto(addr286);
                                 }
                                 §§goto(addr281);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr239);
                        }
                     }
                     §§push(§§pop() * §§pop());
                     if(_loc13_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr107);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr48);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::?H;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§&z§.x);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(!_loc15_)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§&z§.y);
            if(_loc16_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc15_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(_loc16_ || param1)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr199:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc15_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(_loc7_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr214:
                                    addr154:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr215:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr216:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc15_ && _loc2_))
                                       {
                                          §§push(_loc7_);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc16_ || param1)
                                             {
                                                if(_loc15_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      _loc7_ = §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc15_)
                                                            {
                                                               if(!_loc16_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_.col2);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(_loc15_ && param1)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              addr249:
                                                                              §§push(Number(§§pop()));
                                                                              break loop12;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr241:
                                                                        }
                                                                        continue loop11;
                                                                        break loop12;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                                  addr137:
                                                               }
                                                               if(_loc16_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc16_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc15_ && _loc2_))
                                                                  {
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      §§push(_loc2_.§?o§.y);
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         §§push(_loc2_.m_angularVelocity);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc16_ || param1)
                                                         {
                                                            addr275:
                                                            §§push(Number(§§pop()));
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         _loc3_ = this.§""$§;
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(this.§+""§);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(this.§]E§);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(this.§"!U§);
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§0"3§);
                                                                                 if(!(_loc15_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr332:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc16_ || this)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(_loc16_ || this)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc16_ || this)
                                                                                                   {
                                                                                                      addr359:
                                                                                                      §§push(this.§+""§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr365:
                                                                                                         §§push(this.§]E§.y);
                                                                                                         if(_loc16_ || _loc2_)
                                                                                                         {
                                                                                                            addr373:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc16_ || param1)
                                                                                                               {
                                                                                                                  addr384:
                                                                                                                  §§push(this.§"!U§);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr388:
                                                                                                                     §§push(this.§0"3§.y);
                                                                                                                     if(!(_loc15_ && param1))
                                                                                                                     {
                                                                                                                        addr398:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc16_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc16_ || this)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 addr423:
                                                                                                                                 §§push(_loc3_.col1.x);
                                                                                                                                 if(!_loc16_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr468:
                                                                                                                                 var _loc10_:* = §§pop();
                                                                                                                                 §§push(_loc3_.col1.y);
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(_loc16_ || this)
                                                                                                                                    {
                                                                                                                                       addr505:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_.col2.y);
                                                                                                                                          if(!(_loc15_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * _loc5_);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(-§§pop());
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr513:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc11_:* = §§pop();
                                                                                                                                       §§push(this.§0"3§.x);
                                                                                                                                       if(!(_loc15_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                       §§push(this.§0"3§.y);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§0"3§);
                                                                                                                                          if(!(_loc15_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(this.§0"3§);
                                                                                                                                             if(_loc16_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc16_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr573:
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr580:
                                                                                                                                                            addr578:
                                                                                                                                                            §§push(this.§0"3§);
                                                                                                                                                            §§push(this.§0"3§.y);
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               addr583:
                                                                                                                                                               §§push(§§pop() + _loc11_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr586:
                                                                                                                                                            §§push(param1.§2^§);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§"!C§);
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                            if(_loc16_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§0"3§);
                                                                                                                                                               loop14:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§"z§());
                                                                                                                                                                  loop15:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     loop16:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                                                                        loop17:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§0"3§);
                                                                                                                                                                                 addr865:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / this.§0"3§.§2+§());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§-!&§(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr659:
                                                                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr666:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr853:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0"3§);
                                                                                                                                                                              loop22:
                                                                                                                                                                              for(; _loc16_; while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§0"3§);
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              },§§goto(addr835))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       addr796:
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(!(_loc16_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc15_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc16_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(!_loc15_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr837:
                                                                                                                                                                                                while(!(_loc15_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                                                                   continue loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop15;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr836:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc2_.§?o§);
                                                                                                                                                                                          loop28:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_.§?o§);
                                                                                                                                                                                             addr766:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr767:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc2_.§6!W§);
                                                                                                                                                                                                   addr769:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                      addr770:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr771:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            addr772:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc16_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc15_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop22;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc16_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                             §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc2_.§<!%§);
                                                                                                                                                                                                if(_loc16_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   if(!(_loc15_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr638:
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc16_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr648:
                                                                                                                                                                                                               §§push(§§pop() - §§pop() * _loc10_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr648);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr650:
                                                                                                                                                                                                         §§goto(addr651);
                                                                                                                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr648);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr638);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr650);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr651);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr853);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr835:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr836);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr865);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc16_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr796);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr837);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr824);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr773);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr586);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                                §§goto(addr573);
                                                                                                                                             }
                                                                                                                                             §§goto(addr580);
                                                                                                                                          }
                                                                                                                                          §§goto(addr578);
                                                                                                                                       }
                                                                                                                                       §§goto(addr580);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!(_loc15_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§goto(addr505);
                                                                                                                                    }
                                                                                                                                    §§goto(addr513);
                                                                                                                                 }
                                                                                                                                 §§goto(addr505);
                                                                                                                              }
                                                                                                                              §§push(_loc4_);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr441:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc16_ || _loc2_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr468);
                                                                                                                              }
                                                                                                                              addr459:
                                                                                                                              addr460:
                                                                                                                              addr461:
                                                                                                                              §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr464:
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr468);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr464);
                                                                                                                        }
                                                                                                                        §§goto(addr459);
                                                                                                                     }
                                                                                                                     §§goto(addr460);
                                                                                                                  }
                                                                                                                  §§goto(addr459);
                                                                                                               }
                                                                                                               §§push(_loc3_.col2.x);
                                                                                                               if(!(_loc15_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr459);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            §§goto(addr441);
                                                                                                         }
                                                                                                         §§goto(addr398);
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   §§goto(addr464);
                                                                                                }
                                                                                                §§goto(addr423);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr459);
                                                                                 }
                                                                                 §§goto(addr388);
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr365);
                                                               }
                                                               §§goto(addr441);
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr423);
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                   addr227:
                                                   §§push(_loc2_.m_angularVelocity);
                                                   if(_loc16_)
                                                   {
                                                      break loop4;
                                                   }
                                                   addr239:
                                                   §§push(_loc7_);
                                                   break;
                                                }
                                                §§goto(addr249);
                                             }
                                             §§goto(addr239);
                                          }
                                          break;
                                       }
                                       continue loop5;
                                    }
                                    addr240:
                                    §§goto(addr241);
                                 }
                              }
                              else
                              {
                                 §§goto(addr240);
                              }
                           }
                           §§push(-§§pop());
                           if(!(_loc15_ && this))
                           {
                              §§goto(addr239);
                           }
                           §§goto(addr241);
                        }
                     }
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr44);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
