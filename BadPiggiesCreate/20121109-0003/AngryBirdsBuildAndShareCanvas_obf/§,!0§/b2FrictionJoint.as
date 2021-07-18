package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §1!e§:b2Vec2;
      
      private var §3!p§:b2Vec2;
      
      public var §`!n§:b2Mat22;
      
      public var §;"0§:Number;
      
      private var §>d§:b2Vec2;
      
      private var §>f§:Number;
      
      private var §0!=§:Number;
      
      private var §1s§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!e§ = new b2Vec2();
            while(true)
            {
               this.§3!p§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§`!n§ = new b2Mat22();
                  addr149:
                  while(true)
                  {
                     this.§>d§ = new b2Vec2();
                     continue loop1;
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               super(param1);
               while(true)
               {
                  this.§1!e§.SetV(param1.§3!&§);
                  while(true)
                  {
                     this.§3!p§.SetV(param1.§2!P§);
                     addr111:
                     loop6:
                     while(true)
                     {
                        this.§`!n§.§?b§();
                        addr102:
                        while(_loc2_)
                        {
                           this.§;"0§ = 0;
                           while(true)
                           {
                              this.§>d§.§?b§();
                              continue loop6;
                           }
                        }
                        §§goto(addr129);
                     }
                     while(_loc2_ || this)
                     {
                        this.§0!=§ = param1.§&>§;
                        §§goto(addr43);
                     }
                  }
                  if(!(_loc3_ && param1))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.§1!e§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.§3!p§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>d§.x);
            if(!(_loc2_ && _loc3_))
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * this.§>d§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr47);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§>f§;
         }
      }
      
      public function §?";§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§0!=§ = param1;
         }
      }
      
      public function §6T§() : Number
      {
         return this.§0!=§;
      }
      
      public function §-!c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1s§ = param1;
         }
      }
      
      public function §=!"§() : Number
      {
         return this.§1s§;
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
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = b2internal::+d;
         var _loc5_:b2Body = b2internal::"!l;
         var _loc6_:b2Vec2 = _loc4_.§]!g§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§]!g§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§@"!§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§@"!§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§=!N§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§=!N§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§1!e§.x);
         if(!_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc26_ && param1))
            {
               addr106:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§1!e§.y);
            if(_loc27_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc27_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(!(_loc26_ && _loc3_))
            {
               §§push(_loc2_.col1);
               while(true)
               {
                  §§push(§§pop().x);
                  addr240:
                  while(true)
                  {
                     §§push(_loc14_);
                     addr241:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr242:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr244:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc26_)
                              {
                                 §§push(_loc15_);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr248:
                              }
                              addr249:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr250:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr251:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               addr239:
            }
            loop9:
            while(true)
            {
               loop10:
               while(true)
               {
                  §§push(_loc2_.col1);
                  if(!_loc26_)
                  {
                     §§push(§§pop().y);
                     loop11:
                     for(; !_loc26_; if(_loc26_ && _loc2_)
                     {
                        continue;
                     },§§goto(addr164),§§push(Number(§§pop())))
                     {
                        §§push(_loc14_);
                        if(_loc27_ || _loc2_)
                        {
                           if(!(_loc26_ && _loc3_))
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc27_)
                              {
                                 §§push(_loc2_.col2);
                                 if(!_loc26_)
                                 {
                                    §§push(§§pop().y);
                                    if(_loc27_)
                                    {
                                       addr211:
                                       if(!(_loc26_ && this))
                                       {
                                          §§push(_loc15_);
                                          if(!_loc26_)
                                          {
                                             addr222:
                                             §§push(§§pop() + §§pop() * §§pop());
                                             loop12:
                                             for(; _loc27_ || param1; if(_loc26_ && this)
                                             {
                                                continue;
                                             },_loc14_ = §§pop(),if(!_loc27_)
                                             {
                                                §§goto(addr236);
                                             },if(_loc26_)
                                             {
                                                continue loop9;
                                             },if(false)
                                             {
                                                continue loop10;
                                             },_loc2_ = _loc5_.m_xf.R,§§push(this.§3!p§.x),if(_loc27_ || _loc2_)
                                             {
                                                §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                if(!_loc26_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             },var _loc16_:* = §§pop(),§§push(this.§3!p§.y),if(_loc27_ || _loc3_)
                                             {
                                                §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                if(!(_loc26_ && this))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             },var _loc17_:* = §§pop(),if(!_loc26_)
                                             {
                                                §§push(_loc2_.col1);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc27_)
                                                   {
                                                      §§push(_loc16_);
                                                      if(!(_loc26_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc27_ || param1)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr421:
                                                               while(true)
                                                               {
                                                                  §§push(_loc17_);
                                                                  addr422:
                                                                  addr440:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc27_)
                                                                     {
                                                                        addr426:
                                                                        §§push(§§pop() + §§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc27_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              continue loop15;
                                                                              addr324:
                                                                              if(_loc27_ || param1)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    if(_loc27_ || param1)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                 }
                                                                                 continue loop15;
                                                                                 break loop15;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr426:
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr440:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc26_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     break loop15;
                                                                  }
                                                                  break loop15;
                                                               }
                                                            }
                                                            addr420:
                                                         }
                                                         addr439:
                                                         §§push(_loc7_);
                                                      }
                                                      §§goto(addr440);
                                                   }
                                                   break;
                                                }
                                                var _loc19_:* = §§pop();
                                                §§push(this.§;"0§);
                                                if(!(_loc26_ && param1))
                                                {
                                                   §§push(-§§pop());
                                                   if(!(_loc26_ && _loc2_))
                                                   {
                                                      §§push(§§pop() * _loc19_);
                                                      if(_loc27_ || _loc2_)
                                                      {
                                                      }
                                                      addr477:
                                                      var _loc20_:* = §§pop();
                                                      §§push(this.§>f§);
                                                      if(!(_loc26_ && _loc3_))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc21_:* = §§pop();
                                                      if(!_loc26_)
                                                      {
                                                         §§push(param1.§@[§);
                                                         if(_loc27_)
                                                         {
                                                            §§push(this.§1s§);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc26_)
                                                                  {
                                                                     _loc18_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(b2Math);
                                                                        §§push(this.§>f§);
                                                                        if(!(_loc26_ && this))
                                                                        {
                                                                           §§push(_loc20_);
                                                                           if(_loc27_)
                                                                           {
                                                                              addr639:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(_loc18_);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                           }
                                                                           §§pop().§>f§ = §§pop().§5" §(§§pop(),§§pop(),_loc18_);
                                                                           loop52:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>f§);
                                                                              if(!_loc27_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc21_);
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc27_)
                                                                                    {
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          _loc20_ = §§pop();
                                                                                          continue loop52;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr584:
                                                                                    loop58:
                                                                                    for(; _loc27_ || _loc3_; if(_loc26_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    },if(_loc27_)
                                                                                    {
                                                                                       §§push(_loc13_);
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          §§push(_loc20_);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                if(!(_loc26_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc26_ && param1))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§goto(addr537);
                                                                                                      }
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   §§goto(addr721);
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          §§goto(addr684);
                                                                                       }
                                                                                       §§goto(addr717);
                                                                                    },§§goto(addr551))
                                                                                    {
                                                                                       _loc7_ = §§pop();
                                                                                       loop59:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc26_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop58;
                                                                                          addr537:
                                                                                          _loc9_ = §§pop();
                                                                                          if(_loc26_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr545:
                                                                                          if(!_loc27_)
                                                                                          {
                                                                                             continue loop52;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr551:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   addr552:
                                                                                                   addr684:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc20_);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc27_ || _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               break loop21;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr704:
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                         break loop59;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc26_ && this))
                                                                                                   {
                                                                                                      addr692:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         if(!(_loc26_ && this))
                                                                                                         {
                                                                                                            §§goto(addr704);
                                                                                                         }
                                                                                                         addr717:
                                                                                                         §§push(§§pop() + §§pop() * _loc15_);
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            addr720:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop59;
                                                                                                         }
                                                                                                         break loop59;
                                                                                                      }
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   §§goto(addr717);
                                                                                                }
                                                                                                continue loop20;
                                                                                                §§goto(addr545);
                                                                                             }
                                                                                             continue loop52;
                                                                                             addr549:
                                                                                          }
                                                                                          §§push(_loc8_.x);
                                                                                          if(!(_loc26_ && param1))
                                                                                          {
                                                                                             break loop52;
                                                                                          }
                                                                                          §§goto(addr720);
                                                                                       }
                                                                                       var _loc22_:* = §§pop();
                                                                                       §§push(_loc8_.y);
                                                                                       if(_loc27_ || this)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   addr745:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc27_ || this)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(!(_loc26_ && _loc2_))
                                                                                                      {
                                                                                                         addr778:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            addr765:
                                                                                                            §§push(_loc7_);
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               addr769:
                                                                                                               §§push(§§pop() * _loc14_);
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc23_:Number = §§pop();
                                                                                                         §§push(b2Math);
                                                                                                         §§push(this.§`!n§);
                                                                                                         §§push(§§findproperty(b2Vec2));
                                                                                                         §§push(_loc22_);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                         }
                                                                                                         §§push(_loc23_);
                                                                                                         if(_loc27_ || this)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                         }
                                                                                                         var _loc24_:b2Vec2 = §§pop().§<!G§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                         var _loc25_:b2Vec2 = this.§>d§.Copy();
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(this.§>d§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().§<!n§(_loc24_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§@[§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§0!=§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc18_ = §§pop();
                                                                                                                           addr885:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr829:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§>d§);
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr869);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc26_ && _loc3_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr778);
                                                                                                   }
                                                                                                   §§goto(addr765);
                                                                                                }
                                                                                                §§goto(addr778);
                                                                                             }
                                                                                             §§goto(addr769);
                                                                                          }
                                                                                          §§goto(addr745);
                                                                                       }
                                                                                       §§goto(addr778);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr704);
                                                                              }
                                                                              §§goto(addr721);
                                                                           }
                                                                           §§push(_loc9_);
                                                                           if(!(_loc26_ && param1))
                                                                           {
                                                                              §§push(_loc17_);
                                                                              if(!(_loc26_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr684);
                                                                              }
                                                                           }
                                                                           §§goto(addr717);
                                                                           addr646:
                                                                        }
                                                                        §§goto(addr639);
                                                                        if(_loc26_ && param1)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr549);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§push(_loc7_);
                                                               if(_loc26_ && param1)
                                                               {
                                                               }
                                                               §§goto(addr717);
                                                            }
                                                         }
                                                         §§goto(addr720);
                                                      }
                                                      §§goto(addr646);
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr477);
                                             },§§goto(addr430))
                                             {
                                                if(!_loc27_)
                                                {
                                                   break loop10;
                                                }
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(!_loc26_)
                                                {
                                                   _loc15_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!(_loc26_ && param1))
                                                      {
                                                         if(!(_loc26_ && _loc3_))
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop13;
                                                         continue loop13;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr251);
                                             addr223:
                                          }
                                          §§goto(addr248);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr244);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr250);
                  }
                  else
                  {
                     §§goto(addr239);
                  }
               }
               §§goto(addr240);
            }
         }
         §§goto(addr106);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
