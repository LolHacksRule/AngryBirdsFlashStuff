package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2TimeStep;
   import §6Z§.b2Mat22;
   import §6Z§.b2Math;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7"+§:b2Vec2;
      
      private var §6" §:b2Vec2;
      
      public var §,!@§:b2Mat22;
      
      public var §?"!§:Number;
      
      private var §%I§:b2Vec2;
      
      private var §@f§:Number;
      
      private var §5!+§:Number;
      
      private var §3_§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7"+§ = new b2Vec2();
            while(true)
            {
               this.§6" § = new b2Vec2();
               addr175:
               while(true)
               {
                  this.§,!@§ = new b2Mat22();
               }
            }
            addr180:
         }
         while(true)
         {
            this.§%I§ = new b2Vec2();
            while(true)
            {
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     super(param1);
                     loop4:
                     while(true)
                     {
                        this.§7"+§.SetV(param1.§0O§);
                        addr138:
                        while(true)
                        {
                           this.§6" §.SetV(param1.§ @§);
                           continue loop4;
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr180);
                  }
               }
               break;
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               this.§,!@§.§5!H§();
               loop7:
               while(true)
               {
                  this.§?"!§ = 0;
                  loop8:
                  while(true)
                  {
                     this.§%I§.§5!H§();
                     while(true)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              this.§@f§ = 0;
                              §§goto(addr62);
                           }
                           break;
                        }
                        continue loop8;
                        addr43:
                        while(!(_loc3_ && this))
                        {
                           continue loop7;
                           this.§3_§ = param1.maxTorque;
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           if(!_loc3_)
                           {
                              return;
                           }
                           §§goto(addr62);
                        }
                     }
                     §§goto(addr138);
                  }
               }
            }
            §§goto(addr175);
            if(!(_loc2_ || param1))
            {
               continue;
            }
            this.§5!+§ = param1.§&l§;
            §§goto(addr43);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::[Z.GetWorldPoint(this.§7"+§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::8!F.GetWorldPoint(this.§6" §);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§%I§.x);
            if(!_loc2_)
            {
               addr47:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§%I§.y);
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
         if(!(_loc2_ && _loc3_))
         {
            return §§pop() * this.§@f§;
         }
      }
      
      public function §&!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§5!+§ = param1;
         }
      }
      
      public function §?Q§() : Number
      {
         return this.§5!+§;
      }
      
      public function §9i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3_§ = param1;
         }
      }
      
      public function §]Q§() : Number
      {
         return this.§3_§;
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
         var _loc4_:b2Body = b2internal::[Z;
         var _loc5_:b2Body = b2internal::8!F;
         var _loc6_:b2Vec2 = _loc4_.§?!^§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§?!^§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§4!&§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§4!&§);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§`!`§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§`!`§);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7"+§.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc27_ || _loc2_)
            {
               addr116:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§7"+§.y);
            if(!(_loc26_ && param1))
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(_loc27_)
               {
                  addr135:
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               if(!_loc26_)
               {
                  §§push(_loc2_.col1);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(!_loc26_)
                     {
                        addr236:
                        §§push(_loc14_);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        addr236:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc27_ || _loc3_)
                           {
                              §§push(_loc15_);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr213:
                                 §§push(_loc15_);
                                 if(_loc26_ && param1)
                                 {
                                    continue;
                                 }
                                 addr222:
                                 §§push(§§pop() * §§pop());
                                 if(_loc27_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop12:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc15_ = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc27_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc27_)
                                                {
                                                   if(_loc26_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc27_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(!_loc27_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc14_ = §§pop();
                                                if(!(_loc27_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                while(false)
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      if(_loc26_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc14_);
                                                         if(!(_loc26_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc27_ || _loc2_))
                                                            {
                                                               break loop11;
                                                            }
                                                            addr190:
                                                            if(!(_loc26_ && param1))
                                                            {
                                                               if(_loc27_)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  if(_loc26_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(§§pop().y);
                                                                  if(_loc27_ || _loc2_)
                                                                  {
                                                                     if(!_loc26_)
                                                                     {
                                                                        §§goto(addr213);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        addr249:
                                                                     }
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr252:
                                                               while(true)
                                                               {
                                                                  continue loop9;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr236);
                                                }
                                                _loc2_ = _loc5_.m_xf.R;
                                                §§push(this.§6" §.x);
                                                if(!(_loc26_ && this))
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                   if(_loc27_ || param1)
                                                   {
                                                      addr280:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc16_:* = §§pop();
                                                   §§push(this.§6" §.y);
                                                   if(!_loc26_)
                                                   {
                                                      §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                      if(!(_loc26_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc17_:* = §§pop();
                                                   if(!(_loc26_ && param1))
                                                   {
                                                      §§push(_loc2_.col1);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc26_)
                                                         {
                                                            §§push(_loc16_);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc27_)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc17_);
                                                                        addr407:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc26_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc27_ || param1)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.col1);
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                if(_loc26_ && this)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      §§push(_loc2_.col2);
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc26_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc27_ || param1)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      addr386:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            do
                                                                                                            {
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr434:
                                                                                                               addr434:
                                                                                                               addr434:
                                                                                                               var _loc19_:* = §§pop();
                                                                                                               §§push(this.§?"!§);
                                                                                                               if(_loc27_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc19_);
                                                                                                                     if(_loc27_ || param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr457:
                                                                                                                     var _loc20_:* = §§pop();
                                                                                                                     §§push(this.§@f§);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     var _loc21_:* = §§pop();
                                                                                                                     if(_loc27_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(param1.§`!9§);
                                                                                                                        loop27:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§3_§);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc27_ || this)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop28:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    addr638:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(b2Math);
                                                                                                                                       §§push(this.§@f§);
                                                                                                                                       if(!_loc26_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             addr614:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                addr617:
                                                                                                                                                §§push(-§§pop());
                                                                                                                                             }
                                                                                                                                             §§pop().§@f§ = §§pop().§&a§(§§pop(),§§pop(),_loc18_);
                                                                                                                                             loop56:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§@f§);
                                                                                                                                                if(!(_loc26_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                   loop57:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            _loc20_ = §§pop();
                                                                                                                                                            continue loop56;
                                                                                                                                                            if(_loc26_ && _loc2_)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            if(_loc27_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop57;
                                                                                                                                                            }
                                                                                                                                                            addr706:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc26_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr705:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc22_:* = §§pop();
                                                                                                                                                            §§push(_loc8_.y);
                                                                                                                                                            if(_loc27_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc26_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc27_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr750:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr760:
                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr760);
                                                                                                                                                                              }
                                                                                                                                                                              var _loc23_:* = §§pop();
                                                                                                                                                                              §§push(b2Math);
                                                                                                                                                                              §§push(this.§,!@§);
                                                                                                                                                                              §§push(§§findproperty(b2Vec2));
                                                                                                                                                                              §§push(_loc22_);
                                                                                                                                                                              if(_loc27_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(-§§pop());
                                                                                                                                                                              }
                                                                                                                                                                              var _loc24_:b2Vec2 = §§pop().§"]§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                              var _loc25_:b2Vec2 = this.§%I§.Copy();
                                                                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§%I§);
                                                                                                                                                                                 loop29:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§-!r§(_loc24_);
                                                                                                                                                                                    loop30:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1.§`!9§);
                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§5!+§);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          addr882:
                                                                                                                                                                                       }
                                                                                                                                                                                       loop32:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          loop33:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                                                                             loop34:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop35:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§%I§);
                                                                                                                                                                                                   loop36:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().§<T§());
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc18_);
                                                                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr882);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() > §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop37:
                                                                                                                                                                                                                  do
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§%I§);
                                                                                                                                                                                                                     loop38:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().Normalize();
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§%I§);
                                                                                                                                                                                                                           if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§>[§(_loc18_);
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!_loc27_);
                                                                                                                                                                                                                  
                                                                                                                                                                                                                  if(_loc26_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop34;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc26_ && _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop30;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop35;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc24_ = b2Math.§";§(this.§%I§,_loc25_);
                                                                                                                                                                                                   if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                                                                      if(_loc27_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                         §§push(_loc6_.y);
                                                                                                                                                                                                         if(!(_loc26_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc24_.y);
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1094:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                           if(_loc27_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc24_.x);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1104:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1094:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop43:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        loop44:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr1107:
                                                                                                                                                                                                                           loop47:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              loop48:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 addr1109:
                                                                                                                                                                                                                                 loop49:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                       §§push(_loc8_.x);
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       loop51:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                          §§push(_loc8_.y);
                                                                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc11_);
                                                                                                                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc27_ || _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop51;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc26_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop49;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                                                                   if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc24_.y);
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ || this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop44;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr989:
                                                                                                                                                                                                                                                               §§push(_loc24_.x);
                                                                                                                                                                                                                                                               if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr999:
                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1008:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop47;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1019:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1019);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1094);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1104);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr999);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr989);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr999);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1008);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1019);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1094);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1107);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1109);
                                                                                                                                                                                                            if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr932);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr937);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr836);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr760);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr750);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr760);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr750);
                                                                                                                                                         }
                                                                                                                                                         continue loop28;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr705);
                                                                                                                                                }
                                                                                                                                                §§goto(addr706);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr617);
                                                                                                                                       }
                                                                                                                                       §§goto(addr614);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr705);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(_loc17_);
                                                                                                                        if(_loc27_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc27_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr662);
                                                                                                                           }
                                                                                                                           §§goto(addr679);
                                                                                                                        }
                                                                                                                        §§goto(addr696);
                                                                                                                     }
                                                                                                                     §§goto(addr638);
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr457);
                                                                                                               _loc16_ = §§pop();
                                                                                                            }
                                                                                                            while(!(_loc27_ || _loc2_));
                                                                                                            
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc26_ && _loc3_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr434);
                                                                                                            }
                                                                                                            addr333:
                                                                                                         }
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(_loc7_);
                                                                                                   break;
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                    addr419:
                                                                                 }
                                                                                 §§goto(addr434);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                   }
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr252);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr236);
                              }
                           }
                           §§goto(addr249);
                        }
                     }
                  }
               }
               §§goto(addr164);
            }
            §§goto(addr135);
         }
         §§goto(addr116);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
