package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §^"Q§:b2Vec2;
      
      private var §4![§:b2Vec2;
      
      private var §##,§:b2Vec2;
      
      private var §9#6§:b2Mat22;
      
      private var §3Y§:b2Vec2;
      
      private var §'"B§:Number;
      
      private var §&W§:Number;
      
      private var §?#=§:Number;
      
      private var §="T§:Number;
      
      private var §<!8§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc4_:b2Mat22 = null;
         if(_loc6_)
         {
            this.K = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  addr163:
                  while(_loc6_)
                  {
                  }
                  continue loop0;
                  addr125:
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  this.§3Y§ = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     loop9:
                     while(true)
                     {
                        loop10:
                        while(true)
                        {
                           §§push(this.§4![§);
                           loop11:
                           while(true)
                           {
                              §§pop().SetV(param1.target);
                              loop12:
                              while(true)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    §§push(this.§4![§);
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue loop11;
                                    }
                                    §§push(§§pop().x);
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() - b2internal:: "z.m_xf.position.x);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc5_ && param1))
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc5_)
                                             {
                                                continue loop9;
                                             }
                                             continue;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr209:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    _loc4_ = b2internal:: "z.m_xf.R;
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr356:
                                       §§push(this.§^"Q§);
                                       §§push(_loc2_);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(_loc4_.col1.x);
                                          if(_loc6_ || param1)
                                          {
                                             addr375:
                                             addr398:
                                             addr397:
                                             §§push(§§pop() * §§pop());
                                             §§push(_loc3_);
                                             if(_loc6_ || param1)
                                             {
                                                addr396:
                                                §§push(§§pop() * _loc4_.col1.y);
                                             }
                                             §§pop().x = §§pop() + §§pop();
                                             addr399:
                                             §§push(this.§^"Q§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(_loc2_);
                                                if(_loc6_)
                                                {
                                                   §§push(_loc4_.col2.x);
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr328:
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§push(_loc4_.col2.y);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr352:
                                                                        §§pop().y = §§pop() + §§pop() * §§pop();
                                                                        this.§'"B§ = param1.§8!i§;
                                                                        this.§##,§.§&"Q§();
                                                                        this.§&W§ = param1.§""u§;
                                                                        this.§?#=§ = param1.dampingRatio;
                                                                        addr299:
                                                                        addr293:
                                                                        addr288:
                                                                        addr353:
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§="T§ = 0;
                                                                           addr260:
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 this.§<!8§ = 0;
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          if(!(_loc6_ || this))
                                                                                          {
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              §§goto(addr353);
                                                                           }
                                                                           §§goto(addr299);
                                                                        }
                                                                        §§goto(addr399);
                                                                        addr351:
                                                                     }
                                                                     §§goto(addr396);
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr375);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr352);
                                                      }
                                                      §§goto(addr397);
                                                   }
                                                   §§goto(addr352);
                                                }
                                                §§goto(addr328);
                                             }
                                             §§goto(addr356);
                                          }
                                          §§goto(addr396);
                                       }
                                    }
                                    §§goto(addr375);
                                 }
                                 else
                                 {
                                    while(!(_loc5_ && _loc3_))
                                    {
                                       this.§##,§ = new b2Vec2();
                                       while(true)
                                       {
                                          this.§9#6§ = new b2Mat22();
                                          break loop10;
                                          addr84:
                                          if(!(_loc5_ && param1))
                                          {
                                             if(true)
                                             {
                                                §§push(this.§4![§);
                                             }
                                             continue loop10;
                                             break loop12;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§4![§ = new b2Vec2();
                                       §§goto(addr144);
                                    }
                                    addr144:
                                    addr157:
                                 }
                              }
                              §§push(§§pop().y);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() - b2internal:: "z.m_xf.position.y);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr209);
                                 }
                              }
                              §§goto(addr210);
                           }
                        }
                        while(_loc6_)
                        {
                           §§goto(addr125);
                           if(_loc5_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr163);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^"Q§ = new b2Vec2();
            §§goto(addr157);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§4![§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.§^"Q§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§##,§.x);
            if(_loc3_)
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§##,§.y);
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
      
      public function §#!u§() : b2Vec2
      {
         return this.§4![§;
      }
      
      public function §"!J§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(b2internal:: "z.IsAwake() == false)
            {
               if(!(_loc3_ && param1))
               {
                  b2internal:: "z.SetAwake(true);
                  addr74:
                  while(true)
                  {
                  }
                  addr74:
               }
               §§goto(addr74);
            }
            while(true)
            {
               this.§4![§ = param1;
               if(!(_loc3_ && _loc2_))
               {
                  break;
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §1#2§() : Number
      {
         return this.§'"B§;
      }
      
      public function §#E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'"B§ = param1;
         }
      }
      
      public function §,!$§() : Number
      {
         return this.§&W§;
      }
      
      public function §,!m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&W§ = param1;
         }
      }
      
      public function §0!#§() : Number
      {
         return this.§?#=§;
      }
      
      public function §5"3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?#=§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc7_:b2Mat22 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal:: "z;
         §§push(_loc2_.GetMass());
         if(!(_loc13_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!(_loc13_ && _loc2_))
         {
            §§push(§§pop() * this.§&W§);
            if(!_loc13_)
            {
               addr54:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(2 * _loc3_);
            if(_loc14_)
            {
               §§push(this.§?#=§);
               if(!_loc13_)
               {
                  addr77:
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     §§push(_loc4_);
                  }
                  var _loc5_:Number = §§pop();
                  §§push(_loc3_);
                  if(!(_loc13_ && _loc2_))
                  {
                     §§push(_loc4_);
                     if(_loc14_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc14_ || _loc3_)
                        {
                           addr99:
                           addr98:
                           §§push(§§pop() * _loc4_);
                           if(_loc14_)
                           {
                              addr102:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           if(_loc14_)
                           {
                              §§push(this);
                              §§push(param1.§1!O§);
                              if(_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(_loc14_)
                                 {
                                    §§push(param1.§1!O§);
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(§§pop() * _loc6_);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§pop().§<!8§ = §§pop();
                              loop0:
                              while(true)
                              {
                                 addr137:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc14_ || _loc2_)
                                    {
                                       §§push(this.§<!8§);
                                       if(_loc14_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr152:
                                             §§push(1 / this.§<!8§);
                                             if(!(_loc13_ && param1))
                                             {
                                                addr163:
                                                §§push(Number(§§pop()));
                                                if(_loc13_ && param1)
                                                {
                                                   addr181:
                                                   §§pop().§<!8§ = Number(§§pop());
                                                   continue loop0;
                                                }
                                                §§goto(addr181);
                                             }
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!(_loc13_ && param1))
                                             {
                                                §§goto(addr181);
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr152);
                                 }
                              }
                           }
                           while(false)
                           {
                              §§goto(addr137);
                           }
                           _loc7_ = _loc2_.m_xf.R;
                           §§push(this.§^"Q§.x);
                           if(_loc14_ || _loc3_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                              if(!(_loc13_ && param1))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           §§push(this.§^"Q§.y);
                           if(_loc14_)
                           {
                              §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                              if(_loc14_)
                              {
                                 addr254:
                                 §§push(Number(§§pop()));
                              }
                              var _loc9_:* = §§pop();
                              §§push(_loc7_.col1.x);
                              if(_loc14_)
                              {
                                 §§push(_loc8_);
                                 if(_loc14_ || _loc2_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc14_)
                                    {
                                       §§push(_loc7_.col2.x);
                                       if(_loc14_ || param1)
                                       {
                                          addr284:
                                          §§push(§§pop() + §§pop() * _loc9_);
                                          if(!_loc13_)
                                          {
                                             addr287:
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                    var _loc10_:* = §§pop();
                                    if(_loc14_)
                                    {
                                       §§push(_loc7_.col1);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             if(_loc14_ || _loc2_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc7_.col2.y);
                                                   if(_loc14_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * _loc9_);
                                                      }
                                                      addr1127:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc14_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop10:
                                                               while(!_loc13_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§3#>§);
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop15:
                                                                        while(!(_loc13_ && _loc2_))
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§3"y§);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              addr1076:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              _loc12_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.K1);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().col1);
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(_loc11_);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.K1);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().col2);
                                                                                                addr1045:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   addr1046:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      addr1047:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.K1);
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().col1);
                                                                                                            addr1038:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr1039:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                if(!(_loc14_ || _loc3_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§push(§§pop().col2);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc11_);
                                                                                                   addr1021:
                                                                                                   while(!_loc13_)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      while(!(_loc13_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§push(this.K2);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().col1);
                                                                                                            addr986:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1047);
                                                                                                   }
                                                                                                   §§goto(addr1046);
                                                                                                   loop42:
                                                                                                   for(; !(_loc13_ && this); while(true)
                                                                                                   {
                                                                                                      if(!(_loc14_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                      if(_loc13_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr865);
                                                                                                      §§push(_loc12_);
                                                                                                   },§§goto(addr1045))
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                      }
                                                                                                      loop43:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop45:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               loop46:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.K2);
                                                                                                                        loop49:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().col1);
                                                                                                                           loop50:
                                                                                                                           while(_loc14_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 if(!(_loc13_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    loop51:
                                                                                                                                    while(_loc14_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       loop52:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc13_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             addr950:
                                                                                                                                             break;
                                                                                                                                             addr950:
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                addr942:
                                                                                                                                                addr995:
                                                                                                                                                while(!(_loc13_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr996:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      break loop52;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr942);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr941:
                                                                                                                                          }
                                                                                                                                          while(_loc14_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             continue loop49;
                                                                                                                                          }
                                                                                                                                          continue loop20;
                                                                                                                                          addr797:
                                                                                                                                          if(_loc13_ && this)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr805:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                loop67:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.K);
                                                                                                                                                   loop68:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().col2);
                                                                                                                                                            if(_loc13_)
                                                                                                                                                            {
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            §§push(this.K.col2.y);
                                                                                                                                                            if(_loc14_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr688:
                                                                                                                                                               if(!(_loc13_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr695:
                                                                                                                                                                  if(_loc13_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     while(!(_loc13_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop43;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        §§goto(addr695);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop47;
                                                                                                                                                                     addr865:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§<!8§);
                                                                                                                                                                  if(!(_loc13_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr711:
                                                                                                                                                                     if(!(_loc13_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr719:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc13_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc13_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              continue loop67;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop45;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(_loc14_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              addr884:
                                                                                                                                                                              while(!(_loc13_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              continue loop46;
                                                                                                                                                                              §§goto(addr688);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr711);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop44;
                                                                                                                                                                        addr875:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        addr893:
                                                                                                                                                                        while(_loc14_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.K);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§&!c§(this.K1);
                                                                                                                                                                              addr829:
                                                                                                                                                                              while(_loc14_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.K);
                                                                                                                                                                                 loop64:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§1"W§(this.K2);
                                                                                                                                                                                    addr822:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.K);
                                                                                                                                                                                       addr761:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc14_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                          if(!(_loc14_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc14_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc14_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.K.col1.x);
                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc13_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop51;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§<!8§);
                                                                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr797);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr942);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr805);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1038);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr986);
                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr950);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1040);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop21;
                                                                                                                                                                        §§goto(addr719);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr884);
                                                                                                                                                                  §§goto(addr875);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr883);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr719);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr826);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr761);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1021);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr996);
                                                                                                                                          }
                                                                                                                                          §§goto(addr950);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1039);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    §§goto(addr999);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr941);
                                                                                                                           }
                                                                                                                           continue loop19;
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
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(!(_loc14_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr463);
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1127);
                                          }
                                       }
                                    }
                                    §§goto(addr1099);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr98);
               }
               §§push(§§pop() * §§pop());
               if(_loc13_ && this)
               {
               }
            }
            §§goto(addr77);
         }
         §§goto(addr54);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal:: "z;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§^"Q§.x);
         if(_loc16_ || this)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc16_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(this.§^"Q§.y);
         if(!_loc15_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
            if(_loc16_ || this)
            {
               addr73:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc15_ && this))
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc16_ || _loc2_)
                  {
                     §§push(_loc6_);
                     if(!(_loc15_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc16_)
                        {
                           break;
                        }
                        §§push(_loc3_.col2);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr192:
                           while(true)
                           {
                              §§push(_loc7_);
                              addr193:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr194:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    break;
                                 }
                              }
                           }
                           addr128:
                           loop7:
                           while(true)
                           {
                              §§push(_loc3_.col2);
                              if(_loc16_ || _loc2_)
                              {
                                 §§push(§§pop().y);
                                 if(_loc16_ || _loc3_)
                                 {
                                    if(!_loc15_)
                                    {
                                       §§push(_loc7_);
                                       if(!_loc15_)
                                       {
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc16_ || this)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc16_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc15_)
                                                         {
                                                            break loop8;
                                                         }
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc15_)
                                                               {
                                                                  break loop0;
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      addr163:
                                                   }
                                                   break;
                                                }
                                                addr212:
                                                §§push(_loc2_.m_angularVelocity);
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§push(-§§pop());
                                                   if(!(_loc15_ && this))
                                                   {
                                                      break;
                                                   }
                                                }
                                                addr231:
                                                §§push(§§pop() + §§pop());
                                                if(_loc16_)
                                                {
                                                   break loop0;
                                                }
                                                addr160:
                                             }
                                             break;
                                          }
                                          §§goto(addr193);
                                          addr235:
                                          var _loc8_:* = §§pop();
                                          §§push(_loc2_.§ #`§.y);
                                          if(_loc16_ || _loc3_)
                                          {
                                             §§push(_loc2_.m_angularVelocity);
                                             if(!(_loc15_ && this))
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc9_:* = §§pop();
                                          _loc3_ = this.§9#6§;
                                          if(_loc16_ || this)
                                          {
                                             §§push(_loc8_);
                                             if(_loc16_ || param1)
                                             {
                                                §§push(this.§="T§);
                                                if(!(_loc15_ && this))
                                                {
                                                   §§push(this.§3Y§);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               addr313:
                                                               §§push(this.§<!8§);
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  §§push(this.§##,§);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr334:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc16_ || _loc3_)
                                                                                 {
                                                                                    addr366:
                                                                                    §§push(_loc9_);
                                                                                    if(_loc16_ || param1)
                                                                                    {
                                                                                       §§push(this.§="T§);
                                                                                       if(!(_loc15_ && _loc2_))
                                                                                       {
                                                                                          addr383:
                                                                                          §§push(this.§3Y§.y);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc15_ && _loc3_))
                                                                                             {
                                                                                                addr396:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(this.§<!8§);
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      addr403:
                                                                                                      §§push(this.§##,§.y);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr418:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr421:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr432:
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  §§push(_loc3_.col1.x);
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     addr438:
                                                                                                                     §§push(_loc4_);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           addr444:
                                                                                                                           §§push(_loc3_.col2.x);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr451:
                                                                                                                              addr450:
                                                                                                                              addr449:
                                                                                                                              §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              var _loc10_:* = §§pop();
                                                                                                                              §§push(_loc3_.col1.y);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc16_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr480:
                                                                                                                                       §§push(_loc3_.col2.y);
                                                                                                                                       if(!(_loc15_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr490:
                                                                                                                                          §§push(§§pop() * _loc5_);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr495:
                                                                                                                                          §§push(-§§pop());
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       var _loc11_:* = §§pop();
                                                                                                                                       §§push(this.§##,§.x);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc12_:* = §§pop();
                                                                                                                                       §§push(this.§##,§.y);
                                                                                                                                       if(!(_loc15_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       var _loc13_:* = §§pop();
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§##,§);
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(this.§##,§);
                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!(_loc15_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc16_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr568:
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr575:
                                                                                                                                                            addr573:
                                                                                                                                                            §§push(this.§##,§);
                                                                                                                                                            §§push(this.§##,§.y);
                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr583:
                                                                                                                                                               §§push(§§pop() + _loc11_);
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            addr586:
                                                                                                                                                            §§push(param1.§1!O§);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * this.§'"B§);
                                                                                                                                                               if(_loc16_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc14_:* = §§pop();
                                                                                                                                                            if(_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§##,§);
                                                                                                                                                               if(!(_loc15_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§1"t§());
                                                                                                                                                                  loop10:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     loop11:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * _loc14_);
                                                                                                                                                                        loop12:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§##,§);
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() / this.§##,§.Length());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§?1§(§§pop());
                                                                                                                                                                                    addr838:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr818:
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§##,§);
                                                                                                                                                                              loop15:
                                                                                                                                                                              while(!(_loc15_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    loop17:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       loop18:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          loop19:
                                                                                                                                                                                          while(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§##,§);
                                                                                                                                                                                                if(!(_loc16_ || this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc16_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc16_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr772:
                                                                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr772);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop15;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr830);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr785);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr586);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                                §§goto(addr568);
                                                                                                                                             }
                                                                                                                                             §§goto(addr575);
                                                                                                                                          }
                                                                                                                                          §§goto(addr573);
                                                                                                                                       }
                                                                                                                                       §§goto(addr575);
                                                                                                                                    }
                                                                                                                                    §§goto(addr495);
                                                                                                                                 }
                                                                                                                                 §§goto(addr490);
                                                                                                                              }
                                                                                                                              §§goto(addr480);
                                                                                                                           }
                                                                                                                           §§goto(addr451);
                                                                                                                        }
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(!(_loc15_ && param1))
                                                                                                                        {
                                                                                                                           addr462:
                                                                                                                           §§goto(addr451);
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr451);
                                                                                                                  }
                                                                                                                  §§goto(addr444);
                                                                                                               }
                                                                                                               §§goto(addr462);
                                                                                                            }
                                                                                                            §§goto(addr438);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr450);
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§goto(addr451);
                                                                                       }
                                                                                       §§goto(addr403);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr432);
                                                                              }
                                                                              §§goto(addr438);
                                                                           }
                                                                           §§goto(addr444);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§goto(addr418);
                                                                  }
                                                                  §§goto(addr403);
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         §§goto(addr396);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                   §§goto(addr383);
                                                }
                                                §§goto(addr421);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr366);
                                       }
                                       addr230:
                                       §§goto(addr231);
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr194);
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           §§goto(addr230);
                        }
                     }
                     else
                     {
                        §§goto(addr212);
                     }
                     §§goto(addr235);
                  }
                  break;
               }
               §§goto(addr235);
               §§push(Number(§§pop()));
            }
            §§goto(addr167);
         }
         §§goto(addr73);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
