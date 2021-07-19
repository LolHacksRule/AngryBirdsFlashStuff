package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §>!H§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §,7§:b2Vec2;
      
      private var §`!0§:b2Vec2;
      
      private var §5!i§:b2Vec2;
      
      private var §?j§:b2Mat22;
      
      private var §-"$§:b2Vec2;
      
      private var §0!=§:Number;
      
      private var §,L§:Number;
      
      private var §""=§:Number;
      
      private var §>s§:Number;
      
      private var §36§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc6_)
         {
            this.§>!H§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§,7§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§`!0§ = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§5!i§ = new b2Vec2();
                           while(true)
                           {
                              this.§?j§ = new b2Mat22();
                              addr136:
                              addr101:
                              while(true)
                              {
                                 this.§-"$§ = new b2Vec2();
                                 while(!_loc5_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 continue loop3;
                              }
                              addr101:
                              while(!(_loc5_ && _loc2_))
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            super(param1);
            §§goto(addr120);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§`!0§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§,7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && this))
         {
            §§push(this.§5!i§.x);
            if(_loc3_ || _loc3_)
            {
               addr57:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§5!i§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr57);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §>!,§() : b2Vec2
      {
         return this.§`!0§;
      }
      
      public function §"!$§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(b2internal::"!l.IsAwake() == false)
            {
               if(_loc2_)
               {
                  b2internal::"!l.SetAwake(true);
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
            this.§`!0§ = param1;
            if(_loc2_ || _loc3_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §6T§() : Number
      {
         return this.§0!=§;
      }
      
      public function §?";§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0!=§ = param1;
         }
      }
      
      public function §!!u§() : Number
      {
         return this.§,L§;
      }
      
      public function §?!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,L§ = param1;
         }
      }
      
      public function §#4§() : Number
      {
         return this.§""=§;
      }
      
      public function §>+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§""=§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::"!l;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!(_loc14_ && _loc3_))
         {
            §§push(§§pop() * this.§,L§);
            if(!(_loc14_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(_loc13_ || _loc3_)
         {
            §§push(this.§""=§);
            if(_loc13_)
            {
               §§push(§§pop() * §§pop());
               if(_loc13_ || _loc2_)
               {
                  addr78:
                  §§push(§§pop() * _loc4_);
                  if(_loc13_ || this)
                  {
                     addr86:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!_loc14_)
                  {
                     §§push(_loc4_);
                     if(_loc13_ || this)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc14_)
                        {
                           addr103:
                           §§push(§§pop() * _loc4_);
                           if(_loc14_)
                           {
                           }
                           addr107:
                           var _loc6_:* = §§pop();
                           if(!_loc14_)
                           {
                              §§push(this);
                              §§push(param1.§@[§);
                              if(!(_loc14_ && this))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(param1.§@[§);
                                    if(_loc13_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§36§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr136:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc13_ || _loc2_)
                                    {
                                       §§push(this.§36§);
                                       if(!(_loc14_ && this))
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr156:
                                             §§push(1 / this.§36§);
                                             if(_loc13_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc13_ || this)
                                                {
                                                   addr170:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!(_loc14_ && _loc2_))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§pop().§36§ = §§pop();
                                          continue loop0;
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr156);
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(param1.§@[§);
                              if(!_loc14_)
                              {
                                 §§push(_loc6_);
                                 if(_loc13_ || _loc2_)
                                 {
                                    addr131:
                                    §§push(§§pop() * §§pop());
                                    if(_loc13_)
                                    {
                                       §§push(this.§36§);
                                    }
                                    §§pop().§>s§ = §§pop();
                                    if(!_loc14_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr131);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§,7§.x);
                           if(_loc13_ || _loc3_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(_loc13_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.§,7§.y);
                           if(_loc13_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                              if(!(_loc14_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc9_:* = §§pop();
                           §§push(_loc7_.col1.x);
                           if(_loc13_ || param1)
                           {
                              §§push(_loc8_);
                              if(_loc13_)
                              {
                                 addr301:
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(_loc7_.col2.x);
                                    if(!_loc14_)
                                    {
                                       §§push(§§pop() * _loc9_);
                                    }
                                 }
                                 var _loc10_:Number = §§pop();
                                 if(!_loc14_)
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
                                          if(!(_loc14_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc7_.col2.y);
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§push(§§pop() * _loc9_);
                                                }
                                             }
                                             addr1053:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      loop11:
                                                      while(!_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc8_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.§@"!§);
                                                               loop14:
                                                               for(; _loc13_; if(!(_loc13_ || param1))
                                                               {
                                                                  continue;
                                                               },if(!_loc13_)
                                                               {
                                                                  continue loop9;
                                                               },if(_loc14_)
                                                               {
                                                                  continue loop8;
                                                               },if(_loc13_)
                                                               {
                                                                  _loc12_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.K1);
                                                                     addr985:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().col1);
                                                                        continue loop4;
                                                                     }
                                                                     loop47:
                                                                     while(!(_loc14_ && param1))
                                                                     {
                                                                        §§push(this.K2);
                                                                        loop48:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().col1);
                                                                           loop49:
                                                                           while(!_loc14_)
                                                                           {
                                                                              if(_loc14_ && _loc2_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§push(_loc12_);
                                                                              loop50:
                                                                              for(; _loc13_; if(!(_loc13_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              },if(!(_loc14_ && this))
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    §§goto(addr775);
                                                                                 }
                                                                                 §§goto(addr969);
                                                                              },§§goto(addr942))
                                                                              {
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(_loc13_)
                                                                                       {
                                                                                          if(!(_loc14_ && this))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             loop94:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                addr882:
                                                                                                loop51:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop52:
                                                                                                   while(!(_loc14_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      loop53:
                                                                                                      while(!_loc14_)
                                                                                                      {
                                                                                                         continue loop48;
                                                                                                         addr490:
                                                                                                         if(!(_loc13_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(_loc2_.§]!g§);
                                                                                                         loop84:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.§]!g§);
                                                                                                            addr429:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!(_loc14_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc11_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§5!i§);
                                                                                                                     addr440:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr441:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr442:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr414:
                                                                                                                     if(_loc14_ && param1)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     do
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        §§push(_loc2_.m_angularVelocity);
                                                                                                                        if(_loc14_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc13_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_);
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              §§push(this.§5!i§.y);
                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                              {
                                                                                                                                 addr364:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc14_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr350:
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(_loc13_ || this)
                                                                                                                                    {
                                                                                                                                       addr358:
                                                                                                                                       §§push(§§pop() * this.§5!i§.x);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr358);
                                                                                                                           }
                                                                                                                           §§goto(addr350);
                                                                                                                        }
                                                                                                                        §§goto(addr364);
                                                                                                                     }
                                                                                                                     while(§§pop().m_angularVelocity = §§pop(), !_loc13_);
                                                                                                                     
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr372:
                                                                                                                           if(_loc13_ || this)
                                                                                                                           {
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              addr775:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§>!H§);
                                                                                                                                 loop63:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().col2);
                                                                                                                                    if(_loc13_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc14_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(this.§>!H§.col2.y);
                                                                                                                                             if(_loc13_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc13_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§36§);
                                                                                                                                                      if(!(_loc14_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr707:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc13_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop63;
                                                                                                                                                               }
                                                                                                                                                               addr956:
                                                                                                                                                               loop32:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.K2);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().col1);
                                                                                                                                                                     break loop49;
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(!(_loc14_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                        while(!(_loc14_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-§§pop());
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr921:
                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr920:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr921:
                                                                                                                                                                              }
                                                                                                                                                                              addr922:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 continue loop47;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                           addr955:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr905);
                                                                                                                                                                        }
                                                                                                                                                                        addr905:
                                                                                                                                                                        if(!(_loc13_ || _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                           if(_loc13_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc14_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                    if(!(_loc14_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr836:
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          while(_loc13_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr921);
                                                                                                                                                                                          addr837:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§>!H§);
                                                                                                                                                                                             loop57:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§<P§(this.K1);
                                                                                                                                                                                                addr789:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§>!H§);
                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().§9";§(this.K2);
                                                                                                                                                                                                      addr782:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§>!H§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().col1);
                                                                                                                                                                                                            if(_loc13_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§>!H§.col1.x);
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop94;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(this.§36§);
                                                                                                                                                                                                                  if(!(_loc13_ || this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc14_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr942:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           addr943:
                                                                                                                                                                                                                           while(_loc13_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.K2);
                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1033);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr941:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc14_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop52;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                            addr635:
                                                                                                                                                                                                            if(!(_loc14_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc13_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop94;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr955);
                                                                                                                                                                                       addr845:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr837);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr920);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr922);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr836);
                                                                                                                                                                           continue loop63;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr654:
                                                                                                                                                               while(!(_loc14_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§-"$§);
                                                                                                                                                                  loop66:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_.m_sweep);
                                                                                                                                                                     addr611:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().c);
                                                                                                                                                                        addr612:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr613:
                                                                                                                                                                           loop69:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc13_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§`!0§);
                                                                                                                                                                                    addr619:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr617:
                                                                                                                                                                              }
                                                                                                                                                                              addr620:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 addr621:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    addr622:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc14_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop66;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr789);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop69;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr372);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.K1);
                                                                                                                                                               addr976:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().col2);
                                                                                                                                                                  break loop63;
                                                                                                                                                                  addr960:
                                                                                                                                                                  while(_loc13_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().col1);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        addr969:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           break loop53;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.K1);
                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc13_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr954);
                                                                                                                                                                        §§push(§§pop().col2);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr985);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr995:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr913);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr836);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      addr979:
                                                                                                                                                      while(_loc13_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr960);
                                                                                                                                                         §§push(this.K1);
                                                                                                                                                      }
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   addr978:
                                                                                                                                                }
                                                                                                                                                §§goto(addr845);
                                                                                                                                             }
                                                                                                                                             §§goto(addr707);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr905);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr808);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr978);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr654);
                                                                                                                        }
                                                                                                                        §§goto(addr479);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              continue loop84;
                                                                                                                           }
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                        §§goto(addr442);
                                                                                                                        addr444:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr443:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  §§goto(addr444);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(!_loc14_)
                                                                                                      {
                                                                                                         §§goto(addr972);
                                                                                                      }
                                                                                                      §§goto(addr979);
                                                                                                   }
                                                                                                   addr940:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr941);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr881:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr940);
                                                                                          }
                                                                                          addr939:
                                                                                       }
                                                                                       §§goto(addr882);
                                                                                    }
                                                                                    §§goto(addr881);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       §§goto(addr995);
                                                                                    }
                                                                                    addr994:
                                                                                 }
                                                                                 §§goto(addr976);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr939);
                                                                              }
                                                                           }
                                                                           while(_loc13_)
                                                                           {
                                                                              §§goto(addr938);
                                                                              §§push(_loc12_);
                                                                           }
                                                                           §§goto(addr968);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1053);
                                                               })
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     _loc11_ = §§pop();
                                                                     addr1033:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§=!N§);
                                                                        if(_loc13_)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop14;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(!(_loc14_ && _loc3_))
                                       {
                                          §§goto(addr994);
                                          §§push(_loc11_);
                                       }
                                    }
                                 }
                                 §§goto(addr956);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc13_ || this)
                              {
                              }
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr107);
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr86);
            }
         }
         §§goto(addr78);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::"!l;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§,7§.x);
         if(_loc15_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§,7§.y);
         if(_loc15_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc15_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         if(!(_loc16_ && param1))
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
                  if(_loc15_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc15_)
                     {
                        §§push(_loc3_.col2);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc15_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc16_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop4:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop5:
                                                while(true)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col1);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc15_ || _loc3_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc15_ || this)
                                                               {
                                                                  if(!(_loc15_ || this))
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(_loc3_.col2);
                                                                  if(_loc16_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(!(_loc16_ && _loc3_))
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc15_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr179:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc15_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 addr184:
                                                                                 addr231:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          if(!(_loc16_ && this))
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc16_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 §§push(_loc2_.m_angularVelocity);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr235:
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc16_ && this))
                                                                                    {
                                                                                       addr243:
                                                                                       §§push(§§pop() * _loc7_);
                                                                                    }
                                                                                 }
                                                                                 addr254:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc16_ && _loc3_))
                                                                                 {
                                                                                    break loop6;
                                                                                 }
                                                                                 var _loc8_:* = §§pop();
                                                                                 §§push(_loc2_.§]!g§.y);
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    §§push(_loc2_.m_angularVelocity);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc15_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc9_:* = §§pop();
                                                                                 _loc3_ = this.§?j§;
                                                                                 if(!(_loc16_ && this))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(this.§>s§);
                                                                                       if(!(_loc16_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.§-"$§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc15_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc15_ || this)
                                                                                                   {
                                                                                                      §§push(this.§36§);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(this.§5!i§);
                                                                                                         if(!(_loc16_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc16_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!(_loc16_ && _loc3_))
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        if(!(_loc16_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              §§push(this.§>s§);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 addr377:
                                                                                                                                 §§push(this.§-"$§.y);
                                                                                                                                 if(!(_loc16_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr387:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       addr390:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§36§);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             addr399:
                                                                                                                                             §§push(this.§5!i§.y);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                addr402:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   addr405:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr408:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                         addr422:
                                                                                                                                                         §§push(_loc3_.col1.x);
                                                                                                                                                         if(_loc15_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr440:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  addr443:
                                                                                                                                                                  §§push(_loc3_.col2.x);
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr453:
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                     if(_loc15_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr462:
                                                                                                                                                                        var _loc10_:* = Number(§§pop());
                                                                                                                                                                        §§push(_loc3_.col1.y);
                                                                                                                                                                        if(!_loc16_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           if(!(_loc16_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc15_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr484:
                                                                                                                                                                                 §§push(_loc3_.col2.y);
                                                                                                                                                                                 if(_loc15_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr496:
                                                                                                                                                                                    §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                                                    if(_loc15_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                       if(_loc16_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       addr513:
                                                                                                                                                                                       var _loc11_:* = §§pop();
                                                                                                                                                                                       §§push(this.§5!i§.x);
                                                                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                                                                       §§push(this.§5!i§.y);
                                                                                                                                                                                       if(!(_loc16_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                       }
                                                                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§5!i§);
                                                                                                                                                                                          if(!_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§5!i§);
                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(!(_loc16_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   if(_loc15_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc15_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr584:
                                                                                                                                                                                                            addr582:
                                                                                                                                                                                                            §§push(this.§5!i§);
                                                                                                                                                                                                            §§push(this.§5!i§.y);
                                                                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr594:
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            addr595:
                                                                                                                                                                                                            §§push(param1.§@[§);
                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * this.§0!=§);
                                                                                                                                                                                                               if(_loc15_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§5!i§);
                                                                                                                                                                                                               loop12:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§`2§());
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
                                                                                                                                                                                                                              loop16:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§5!i§);
                                                                                                                                                                                                                                 loop17:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() / this.§5!i§.§?!]§());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().§7H§(§§pop());
                                                                                                                                                                                                                                    loop18:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr743:
                                                                                                                                                                                                                                       if(_loc16_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr752:
                                                                                                                                                                                                                                       §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                          if(_loc15_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                             if(_loc15_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc2_.§@"!§);
                                                                                                                                                                                                                                                   if(_loc15_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr715:
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc16_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               while(_loc15_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                                                                  §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                                                  if(_loc15_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc2_.§=!N§);
                                                                                                                                                                                                                                                                     if(!_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                        if(_loc15_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                                                                                                                           if(_loc15_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr652:
                                                                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                                                                 if(!(_loc16_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr662:
                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc10_);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr662);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr665:
                                                                                                                                                                                                                                                                              §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                                              addr664:
                                                                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc16_ && _loc2_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                                                                    addr675:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 loop32:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr743);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                                                                          addr730:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc2_.§]!g§);
                                                                                                                                                                                                                                                                                             addr732:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                addr733:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc2_.§@"!§);
                                                                                                                                                                                                                                                                                                   if(!_loc16_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         addr739:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            addr740:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr738:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr739);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr752);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr789:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr730);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop18;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr662);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr652);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr665);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop24:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§5!i§);
                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(!_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                        if(_loc15_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr804);
                                                                                                                                                                                                                                                                           §§push(_loc12_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop24;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                                                                     addr793:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop12;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                  if(_loc15_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop13;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr770:
                                                                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                                                                     if(_loc15_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop15;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr783:
                                                                                                                                                                                                                                                                           if(!_loc16_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr786:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr789);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr813:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr786);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr804:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc16_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                              break loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                                                                        addr804:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr783);
                                                                                                                                                                                                                                                                  §§goto(addr804);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr813);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr740);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr739);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr715);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr733);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr715);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr732);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr730);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr793);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr675);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr595);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr594);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr584);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr582);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr584);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr496);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr513);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr496);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr484);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr462);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr453);
                                                                                                                                                            }
                                                                                                                                                            addr449:
                                                                                                                                                            §§push(§§pop() * _loc5_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr462);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr443);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr449);
                                                                                                                                          }
                                                                                                                                          §§goto(addr443);
                                                                                                                                       }
                                                                                                                                       §§goto(addr453);
                                                                                                                                    }
                                                                                                                                    §§goto(addr405);
                                                                                                                                 }
                                                                                                                                 §§goto(addr449);
                                                                                                                              }
                                                                                                                              §§goto(addr390);
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        §§goto(addr422);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  §§goto(addr443);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            §§goto(addr387);
                                                                                                         }
                                                                                                         §§goto(addr399);
                                                                                                      }
                                                                                                      §§goto(addr440);
                                                                                                   }
                                                                                                   §§goto(addr462);
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             §§goto(addr402);
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       §§goto(addr440);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 §§goto(addr422);
                                                                              }
                                                                           }
                                                                           §§goto(addr254);
                                                                        }
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr254);
                                                }
                                             }
                                          }
                                       }
                                       addr217:
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr243);
                              }
                              addr206:
                           }
                           §§goto(addr217);
                        }
                     }
                     §§goto(addr254);
                  }
                  §§goto(addr206);
               }
            }
         }
         §§goto(addr123);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
