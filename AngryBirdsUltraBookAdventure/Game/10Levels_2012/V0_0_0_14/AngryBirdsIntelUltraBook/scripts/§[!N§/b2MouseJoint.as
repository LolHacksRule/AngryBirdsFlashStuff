package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJoint extends b2Joint
   {
       
      
      private var §@"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var §>!M§:b2Vec2;
      
      private var §4!!§:b2Vec2;
      
      private var §+!P§:b2Vec2;
      
      private var §#K§:b2Mat22;
      
      private var §9v§:b2Vec2;
      
      private var §[!Y§:Number;
      
      private var §<9§:Number;
      
      private var §=Z§:Number;
      
      private var §^!X§:Number;
      
      private var §&!i§:Number;
      
      public function b2MouseJoint(param1:b2MouseJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         if(!_loc5_)
         {
            this.§@"§ = new b2Mat22();
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
                     this.§>!M§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.§4!!§ = new b2Vec2();
                        while(true)
                        {
                           this.§+!P§ = new b2Vec2();
                           addr127:
                           addr53:
                           while(true)
                           {
                              this.§#K§ = new b2Mat22();
                              addr74:
                              if(_loc6_ || _loc2_)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                           }
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this.§4!!§);
                                 if(!_loc5_)
                                 {
                                    §§pop().SetV(param1.target);
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr74);
                                          }
                                          while(true)
                                          {
                                             this.§9v§ = new b2Vec2();
                                             break loop9;
                                          }
                                          addr121:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                          addr95:
                                       }
                                    }
                                    §§goto(addr127);
                                    addr70:
                                 }
                              }
                              continue loop3;
                           }
                           §§push(this.§4!!§);
                           §§push(§§pop().y);
                           if(_loc6_ || _loc2_)
                           {
                              addr167:
                              §§push(§§pop() - b2internal::7!<.m_xf.position.y);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr189:
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              _loc4_ = b2internal::7!<.m_xf.R;
                              if(_loc6_)
                              {
                                 addr363:
                                 addr362:
                                 addr339:
                                 addr338:
                                 §§push(this.§>!M§);
                                 §§push(_loc2_);
                                 §§push(_loc4_.col1.x);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr350:
                                    §§push(§§pop() * §§pop());
                                    §§push(_loc3_);
                                    if(_loc6_ || _loc2_)
                                    {
                                       addr361:
                                       §§push(§§pop() * _loc4_.col1.y);
                                    }
                                 }
                                 §§pop().x = §§pop() + §§pop();
                                 addr364:
                                 §§push(this.§>!M§);
                                 if(_loc6_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_.col2.x);
                                          if(_loc6_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_)
                                             {
                                                addr293:
                                                if(_loc6_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr303:
                                                      §§push(_loc4_.col2.y);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr314:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr317:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§pop().y = §§pop();
                                                               this.§[!Y§ = param1.§4!G§;
                                                               this.§+!P§.§%&§();
                                                               this.§<9§ = param1.§ $§;
                                                               this.§=Z§ = param1.§7B§;
                                                               addr325:
                                                               addr258:
                                                               addr269:
                                                               addr263:
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  this.§^!X§ = 0;
                                                                  addr228:
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           this.§&!i§ = 0;
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr325);
                                                                                 }
                                                                                 return;
                                                                                 addr223:
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr228);
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr325);
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr362);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                §§goto(addr350);
                                             }
                                             §§goto(addr317);
                                          }
                                          §§goto(addr303);
                                       }
                                       §§goto(addr339);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr338);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr189);
                        }
                     }
                  }
               }
               if(_loc5_ && _loc3_)
               {
                  continue;
               }
               super(param1);
               §§goto(addr95);
            }
         }
         §§goto(addr121);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return this.§4!!§;
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.§>!M§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§+!P§.x);
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr44);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc3_)
         {
            addr44:
            §§push(§§pop() * this.§+!P§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §=;§() : b2Vec2
      {
         return this.§4!!§;
      }
      
      public function §!P§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(b2internal::7!<.IsAwake() == false)
            {
               while(true)
               {
                  b2internal::7!<.SetAwake(true);
                  addr60:
                  while(true)
                  {
                  }
                  addr45:
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr52:
               }
            }
            while(true)
            {
               this.§4!!§ = param1;
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr45);
            }
            §§goto(addr52);
         }
         §§goto(addr60);
      }
      
      public function § !#§() : Number
      {
         return this.§[!Y§;
      }
      
      public function §`n§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§[!Y§ = param1;
         }
      }
      
      public function §8F§() : Number
      {
         return this.§<9§;
      }
      
      public function §]!#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<9§ = param1;
         }
      }
      
      public function §]J§() : Number
      {
         return this.§=Z§;
      }
      
      public function §7!w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=Z§ = param1;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc7_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc2_:b2Body = b2internal::7!<;
         §§push(_loc2_.GetMass());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(2 * Math.PI);
         if(!_loc14_)
         {
            §§push(§§pop() * this.§<9§);
            if(_loc13_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(2 * _loc3_);
         if(_loc13_)
         {
            §§push(this.§=Z§);
            if(!_loc14_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc14_)
               {
                  addr63:
                  §§push(§§pop() * _loc4_);
                  if(_loc13_)
                  {
                     addr66:
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_);
               if(!(_loc14_ && param1))
               {
                  §§push(_loc4_);
                  if(_loc13_)
                  {
                     addr96:
                     §§push(§§pop() * §§pop());
                     if(_loc13_ || _loc3_)
                     {
                        §§push(_loc4_);
                     }
                     var _loc6_:Number = §§pop();
                     if(_loc13_)
                     {
                        §§push(this);
                        §§push(param1.§6c§);
                        if(_loc13_ || this)
                        {
                           §§push(_loc5_);
                           if(!_loc14_)
                           {
                              §§push(param1.§6c§);
                              if(!(_loc14_ && _loc2_))
                              {
                                 §§push(§§pop() * _loc6_);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() * §§pop());
                        }
                        §§pop().§&!i§ = §§pop();
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this);
                           if(!(_loc14_ && param1))
                           {
                              §§push(this.§&!i§);
                              if(_loc13_)
                              {
                                 if(§§pop() != 0)
                                 {
                                    addr143:
                                    §§push(1 / this.§&!i§);
                                    if(!_loc14_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ && this)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(0);
                                    if(_loc13_)
                                    {
                                       addr161:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§pop().§&!i§ = §§pop();
                                 do
                                 {
                                    §§push(this);
                                    §§push(param1.§6c§);
                                    if(!_loc14_)
                                    {
                                       §§push(_loc6_);
                                       if(!(_loc14_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc14_)
                                          {
                                             continue;
                                          }
                                          addr118:
                                          §§push(this.§&!i§);
                                       }
                                       §§push(§§pop() * §§pop());
                                       continue;
                                    }
                                    §§goto(addr118);
                                 }
                                 while(§§pop().§^!X§ = §§pop(), !_loc13_);
                                 
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 _loc7_ = _loc2_.m_xf.R;
                                 §§push(this.§>!M§.x);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                    if(_loc13_)
                                    {
                                       addr209:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(this.§>!M§.y);
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                       if(!(_loc14_ && this))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc9_:* = §§pop();
                                    §§push(_loc7_.col1.x);
                                    if(!(_loc14_ && _loc3_))
                                    {
                                       §§push(_loc8_);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc14_)
                                          {
                                             §§push(_loc7_.col2.x);
                                             if(_loc13_)
                                             {
                                                addr256:
                                                §§push(§§pop() * _loc9_);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc13_ || _loc2_)
                                             {
                                                addr266:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc10_:* = §§pop();
                                             if(_loc13_)
                                             {
                                                §§push(_loc7_.col1);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc7_.col2.y);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() * _loc9_);
                                                            }
                                                            addr975:
                                                            if(!(_loc13_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            addr983:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc14_ && _loc2_))
                                                            {
                                                               _loc12_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.K1);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().col1);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(_loc11_);
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(this.K1);
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().col2);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.K1);
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop().col1);
                                                                                                while(!_loc14_)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().y = §§pop();
                                                                                                      continue loop23;
                                                                                                      while(_loc13_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(_loc9_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.K2);
                                                                                                                        loop38:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().col2);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 while(_loc13_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       addr893:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr894:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             addr895:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr896:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr897:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.K2);
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr664:
                                                                                                                                       if(!(_loc13_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§@"§);
                                                                                                                                          if(!(_loc14_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc14_)
                                                                                                                                             {
                                                                                                                                                addr605:
                                                                                                                                                if(_loc13_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§pop().§+!s§(this.§#K§);
                                                                                                                                                   while(!(_loc14_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§9v§);
                                                                                                                                                      loop69:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc2_.m_sweep);
                                                                                                                                                         addr576:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().c);
                                                                                                                                                            addr577:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr578:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  if(!(_loc14_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§4!!§);
                                                                                                                                                                        addr589:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr587:
                                                                                                                                                                  }
                                                                                                                                                                  addr590:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr591:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        continue loop69;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr901);
                                                                                                                                                      §§push(this.K2);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1028);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr676);
                                                                                                                                          }
                                                                                                                                          §§goto(addr626);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§<O§(this.K2);
                                                                                                                                          §§goto(addr726);
                                                                                                                                          §§goto(addr605);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              addr927:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr928);
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
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr991:
                                                            }
                                                            §§goto(addr1052);
                                                         }
                                                         addr1043:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr1043);
                                                      }
                                                   }
                                                   §§goto(addr1051);
                                                }
                                             }
                                             §§goto(addr991);
                                          }
                                          §§goto(addr266);
                                       }
                                       §§goto(addr256);
                                    }
                                    §§goto(addr266);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr143);
                        }
                     }
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc14_ && _loc2_)
                  {
                  }
               }
               §§goto(addr96);
            }
            §§goto(addr63);
         }
         §§goto(addr66);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc2_:b2Body = b2internal::7!<;
         _loc3_ = _loc2_.m_xf.R;
         §§push(this.§>!M§.x);
         if(_loc16_)
         {
            §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
            if(_loc16_ || this)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§>!M§.y);
            if(_loc16_)
            {
               §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
               if(!(_loc15_ && param1))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(_loc16_)
            {
               §§push(_loc3_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc16_ || param1)
                  {
                     §§push(_loc6_);
                     if(!_loc15_)
                     {
                        §§push(§§pop() * §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_.col2);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc16_ || param1)
                              {
                                 §§push(_loc7_);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop4:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr205:
                                          loop5:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             addr206:
                                             while(true)
                                             {
                                                addr87:
                                                while(true)
                                                {
                                                   §§push(_loc3_.col1);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc16_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(_loc3_.col2);
                                                            if(_loc15_ && this)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(!(_loc16_ || this))
                                                            {
                                                               break loop2;
                                                            }
                                                            §§push(_loc7_);
                                                            if(!_loc15_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc15_)
                                                                  {
                                                                     break loop3;
                                                                  }
                                                                  addr134:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() + §§pop() * §§pop());
                                                            if(_loc16_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc8_:* = §§pop();
                                                            §§push(_loc2_.§9!§.y);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(_loc2_.m_angularVelocity);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc15_)
                                                               {
                                                                  addr255:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc9_:* = §§pop();
                                                               _loc3_ = this.§#K§;
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     §§push(this.§^!X§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(this.§9v§);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc15_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc16_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§&!i§);
                                                                                    if(_loc16_ || _loc3_)
                                                                                    {
                                                                                       §§push(this.§+!P§);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         addr331:
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc16_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(this.§^!X§);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               addr343:
                                                                                                               §§push(this.§9v§.y);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  addr348:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr351:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(this.§&!i§);
                                                                                                                        if(_loc16_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr363:
                                                                                                                           §§push(this.§+!P§.y);
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr373:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc16_ || param1)
                                                                                                                              {
                                                                                                                                 addr381:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc16_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr402:
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       §§push(_loc3_.col1.x);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr408:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(!(_loc15_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc16_ || this)
                                                                                                                                             {
                                                                                                                                                addr424:
                                                                                                                                                §§push(_loc3_.col2.x);
                                                                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr436:
                                                                                                                                                   §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr439:
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                      if(!(_loc15_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr436);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr436);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    var _loc10_:* = §§pop();
                                                                                                                                    §§push(_loc3_.col1.y);
                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.col2.y);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr472:
                                                                                                                                                §§push(§§pop() + §§pop() * _loc5_);
                                                                                                                                                if(!_loc15_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr484:
                                                                                                                                                   var _loc11_:* = §§pop();
                                                                                                                                                   §§push(this.§+!P§.x);
                                                                                                                                                   if(_loc16_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc12_:* = §§pop();
                                                                                                                                                   §§push(this.§+!P§.y);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc13_:* = §§pop();
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§+!P§);
                                                                                                                                                      if(!(_loc15_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§+!P§);
                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(!(_loc15_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc15_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        addr550:
                                                                                                                                                                        §§push(this.§+!P§);
                                                                                                                                                                        §§push(this.§+!P§.y);
                                                                                                                                                                        if(_loc16_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr560:
                                                                                                                                                                           §§pop().y = §§pop() + _loc11_;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr560);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(param1.§6c§);
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * this.§[!Y§);
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           addr570:
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        var _loc14_:* = §§pop();
                                                                                                                                                                        if(!(_loc15_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§+!P§);
                                                                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr785:
                                                                                                                                                                              addr784:
                                                                                                                                                                              addr787:
                                                                                                                                                                              if(§§pop().§!!v§() > _loc14_ * _loc14_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr788:
                                                                                                                                                                                 addr790:
                                                                                                                                                                                 §§push(this.§+!P§);
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / this.§+!P§.§-l§());
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§;a§(§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              addr755:
                                                                                                                                                                              §§push(this.§+!P§.x);
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr759:
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr772:
                                                                                                                                                                                    _loc10_ = Number(§§pop());
                                                                                                                                                                                    addr773:
                                                                                                                                                                                    §§push(this.§+!P§);
                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc15_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(!_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr737:
                                                                                                                                                                                                         if(!_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr740:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!_loc15_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                                                                               addr743:
                                                                                                                                                                                                               if(_loc16_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr693:
                                                                                                                                                                                                                  addr704:
                                                                                                                                                                                                                  addr705:
                                                                                                                                                                                                                  addr692:
                                                                                                                                                                                                                  addr690:
                                                                                                                                                                                                                  §§push(_loc2_.§9!§);
                                                                                                                                                                                                                  §§push(_loc2_.§9!§.x);
                                                                                                                                                                                                                  §§push(_loc2_.§1!X§);
                                                                                                                                                                                                                  if(_loc16_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr703:
                                                                                                                                                                                                                     §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                  addr706:
                                                                                                                                                                                                                  §§push(_loc2_.§9!§);
                                                                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc2_.§9!§);
                                                                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc16_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc2_.§1!X§);
                                                                                                                                                                                                                              if(!(_loc15_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(_loc16_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr675:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                       if(!(_loc15_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          addr684:
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                                                                             §§push(_loc2_.m_angularVelocity);
                                                                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc2_.§^!B§);
                                                                                                                                                                                                                                                if(_loc16_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                                                                   if(!_loc15_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                                                                      if(!(_loc15_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr624:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                                                                            if(_loc16_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * _loc10_);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().m_angularVelocity = §§pop() + §§pop() * §§pop();
                                                                                                                                                                                                                                                         if(!(_loc15_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc15_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr773);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  return;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr743);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr706);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr684);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr624);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr788);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr693);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr703);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr704);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr705);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr675);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr692);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr690);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr788);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr755);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr772);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr740);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr785);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr737);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr790);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr785);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr784);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr787);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr788);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr570);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr560);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr550);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr472);
                                                                                                                                          }
                                                                                                                                          §§goto(addr484);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr472);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 §§goto(addr439);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr436);
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                     §§goto(addr424);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr373);
                                                                                                            }
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr424);
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                 }
                                                                                 §§goto(addr402);
                                                                              }
                                                                              §§goto(addr351);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr408);
                                                               }
                                                               §§goto(addr331);
                                                            }
                                                            §§goto(addr255);
                                                         }
                                                         §§goto(addr134);
                                                      }
                                                      continue loop5;
                                                      addr93:
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 addr224:
                                 §§goto(addr225);
                                 §§push(_loc7_);
                              }
                              break;
                           }
                           §§push(-§§pop());
                           if(_loc16_)
                           {
                              §§goto(addr224);
                           }
                           §§goto(addr225);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr205);
               }
            }
            §§goto(addr206);
         }
         §§goto(addr49);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
