package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § t§:b2Vec2;
      
      private var §9!5§:b2Vec2;
      
      public var §7!a§:b2Mat22;
      
      public var §?!I§:Number;
      
      private var §9!4§:b2Vec2;
      
      private var §+v§:Number;
      
      private var §"! §:Number;
      
      private var §`+§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ t§ = new b2Vec2();
            while(true)
            {
               this.§9!5§ = new b2Vec2();
               while(true)
               {
                  this.§7!a§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§9!4§ = new b2Vec2();
                     while(true)
                     {
                        super(param1);
                        addr143:
                        while(true)
                        {
                           this.§ t§.SetV(param1.§!!U§);
                        }
                        loop6:
                        for(; !(_loc2_ && _loc3_); if(!(_loc3_ || this))
                        {
                           continue;
                        },§§goto(addr65))
                        {
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           this.§7!a§.§7_§();
                           loop7:
                           while(true)
                           {
                              this.§?!I§ = 0;
                              while(true)
                              {
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop7;
                                 }
                                 addr101:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    this.§9!4§.§7_§();
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§9!5§.SetV(param1.§"!'§);
                                    continue loop6;
                                    §§goto(addr101);
                                 }
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  this.§+v§ = 0;
                  §§goto(addr51);
               }
            }
         }
         §§goto(addr138);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.§ t§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.§9!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§9!4§.x);
            if(_loc2_)
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() * this.§9!4§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr36);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§+v§;
         }
      }
      
      public function §3K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"! § = param1;
         }
      }
      
      public function §#!T§() : Number
      {
         return this.§"! §;
      }
      
      public function §"c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`+§ = param1;
         }
      }
      
      public function §!!6§() : Number
      {
         return this.§`+§;
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
         var _loc4_:b2Body = b2internal::6z;
         var _loc5_:b2Body = b2internal::3D;
         var _loc6_:b2Vec2 = _loc4_.§2!@§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§2!@§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§+5§);
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§+5§);
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§%L§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§%L§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ t§.x);
         if(_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§ t§.y);
         if(!_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc27_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(!_loc26_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc14_);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc27_)
                     {
                        §§push(_loc2_.col2);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr252:
                           while(true)
                           {
                              §§push(_loc15_);
                              addr253:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr254:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                           }
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_.col2);
                              if(!(_loc27_ || _loc2_))
                              {
                                 continue loop3;
                              }
                              §§push(§§pop().y);
                              if(!_loc26_)
                              {
                                 loop15:
                                 while(!(_loc26_ && _loc2_))
                                 {
                                    §§push(_loc15_);
                                    if(!(_loc26_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          if(!(_loc27_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() + §§pop());
                                          loop13:
                                          for(; !_loc26_; if(_loc26_ && this)
                                          {
                                             continue;
                                          },if(!_loc26_)
                                          {
                                             §§goto(addr154);
                                             §§push(Number(§§pop()));
                                          },§§goto(addr181))
                                          {
                                             if(!_loc27_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(Number(§§pop()));
                                             loop14:
                                             while(true)
                                             {
                                                _loc15_ = §§pop();
                                                addr241:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc27_ || this)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr154:
                                                   if(!_loc27_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(_loc26_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   _loc14_ = §§pop();
                                                   if(!(_loc27_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(!(_loc26_ && param1))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.col1);
                                                         if(_loc26_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop().y);
                                                         while(_loc27_ || _loc3_)
                                                         {
                                                            §§push(_loc14_);
                                                            if(!_loc27_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            if(_loc27_ || _loc2_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               continue loop12;
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                         }
                                                      }
                                                      continue loop0;
                                                      addr175:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr175);
                                                   }
                                                }
                                                _loc2_ = _loc5_.m_xf.R;
                                                §§push(this.§9!5§.x);
                                                if(!(_loc26_ && this))
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                   if(_loc27_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc16_:* = §§pop();
                                                §§push(this.§9!5§.y);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                   if(_loc27_ || _loc2_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc17_:* = §§pop();
                                                if(_loc27_ || param1)
                                                {
                                                   §§push(_loc2_.col1);
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc27_)
                                                      {
                                                         §§push(_loc16_);
                                                         if(!(_loc26_ && _loc2_))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.col2);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(_loc17_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        addr375:
                                                                        §§push(_loc17_);
                                                                        if(!(_loc26_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc27_ || _loc3_)
                                                                           {
                                                                              addr391:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc27_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              loop67:
                                                                              while(!(_loc26_ && _loc2_))
                                                                              {
                                                                                 _loc17_ = §§pop();
                                                                                 loop68:
                                                                                 while(_loc27_ || this)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       if(!_loc27_)
                                                                                       {
                                                                                          continue loop67;
                                                                                       }
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc27_ || _loc2_)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             addr448:
                                                                                             addr448:
                                                                                             addr449:
                                                                                             var _loc19_:Number = §§pop();
                                                                                             §§push(this.§?!I§);
                                                                                             if(_loc27_ || param1)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc27_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop() * _loc19_);
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      addr471:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc20_:* = §§pop();
                                                                                                §§push(this.§+v§);
                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc21_:* = §§pop();
                                                                                                if(!(_loc26_ && _loc3_))
                                                                                                {
                                                                                                   §§push(param1.§1_§);
                                                                                                   if(_loc27_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(this.§`+§);
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc27_ || _loc2_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop55:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  loop56:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(b2Math);
                                                                                                                     §§push(this.§+v§);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(_loc27_ || this)
                                                                                                                        {
                                                                                                                           addr642:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().§+v§ = §§pop().§9!%§(§§pop(),§§pop(),_loc18_);
                                                                                                                        loop57:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc27_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§+v§);
                                                                                                                              if(_loc27_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    continue loop55;
                                                                                                                                 }
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 if(_loc26_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    addr697:
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       addr700:
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          addr709:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       addr721:
                                                                                                                                       addr722:
                                                                                                                                       addr720:
                                                                                                                                       §§push(§§pop() + §§pop() * _loc15_);
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          break loop25;
                                                                                                                                       }
                                                                                                                                       var _loc22_:* = §§pop();
                                                                                                                                       §§push(_loc8_.y);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc16_);
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc26_ && param1))
                                                                                                                                                {
                                                                                                                                                   addr755:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                      if(!(_loc26_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr770:
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr775:
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr779:
                                                                                                                                                               var _loc23_:Number = §§pop();
                                                                                                                                                               §§push(b2Math);
                                                                                                                                                               §§push(this.§7!a§);
                                                                                                                                                               §§push(§§findproperty(b2Vec2));
                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                               if(!(_loc26_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                               }
                                                                                                                                                               var _loc24_:b2Vec2 = §§pop().§&W§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                               var _loc25_:b2Vec2 = this.§9!4§.Copy();
                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§9!4§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§!!,§(_loc24_);
                                                                                                                                                                     loop27:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§1_§);
                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§"! §);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc26_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              addr862:
                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * _loc18_);
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(§§pop() > §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop32:
                                                                                                                                                                                 while(!(_loc26_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§9!4§);
                                                                                                                                                                                    loop33:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().Normalize();
                                                                                                                                                                                       addr880:
                                                                                                                                                                                       while(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop33;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc26_ && this)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(false)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§9!4§);
                                                                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§0]§());
                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr862);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr879);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          break loop32;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr849:
                                                                                                                                                                                       addr904:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr911:
                                                                                                                                                                                    _loc24_ = b2Math.§=_§(this.§9!4§,_loc25_);
                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc10_);
                                                                                                                                                                                          if(!(_loc26_ && _loc3_))
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
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                          loop37:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc12_);
                                                                                                                                                                                                loop39:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                   loop40:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc24_.y);
                                                                                                                                                                                                      loop41:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         loop42:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            loop43:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc24_.x);
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  loop45:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     loop46:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        loop47:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop48:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                 §§push(_loc8_.x);
                                                                                                                                                                                                                                 if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc11_);
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                                                                 while(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    §§push(_loc8_.y);
                                                                                                                                                                                                                                    if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                    loop51:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc24_.y);
                                                                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc24_.x);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1023:
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1040:
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                                                                                                                  loop52:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop37;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop52;
                                                                                                                                                                                                                                                                        addr966:
                                                                                                                                                                                                                                                                        _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop37;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr945:
                                                                                                                                                                                                                                                                  addr1053:
                                                                                                                                                                                                                                                                  addr1054:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop38;
                                                                                                                                                                                                                                                               return;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop42;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc26_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop45;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1023);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1040);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                    if(_loc26_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr945);
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
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1054);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr849);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr911);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr904);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc27_ || _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§[!T§(_loc18_);
                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr840);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr880);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr882);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr779);
                                                                                                                                                      }
                                                                                                                                                      addr774:
                                                                                                                                                      §§goto(addr775);
                                                                                                                                                      §§push(§§pop() * _loc14_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr779);
                                                                                                                                                }
                                                                                                                                                §§goto(addr775);
                                                                                                                                             }
                                                                                                                                             §§goto(addr774);
                                                                                                                                          }
                                                                                                                                          §§goto(addr755);
                                                                                                                                       }
                                                                                                                                       §§goto(addr770);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr617:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc20_ = §§pop();
                                                                                                                                       continue loop57;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop56;
                                                                                                                        }
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr700);
                                                                                                                     }
                                                                                                                     §§goto(addr642);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr676:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr700);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                                §§goto(addr625);
                                                                                             }
                                                                                             §§goto(addr471);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                break loop68;
                                                                                             }
                                                                                             addr434:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          if(_loc27_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc26_ && _loc2_)
                                                                                             {
                                                                                                continue loop67;
                                                                                             }
                                                                                             §§push(_loc2_.col2);
                                                                                             if(_loc26_ && this)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc27_)
                                                                                             {
                                                                                                addr373:
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr375);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          break loop67;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr449);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr339:
                                                                                    addr436:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.col1);
                                                                                       if(_loc26_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr345);
                                                                                       §§push(§§pop().y);
                                                                                    }
                                                                                    §§push(_loc9_);
                                                                                    if(!_loc26_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       break loop18;
                                                                                    }
                                                                                    §§goto(addr448);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr434);
                                                                              }
                                                                              addr433:
                                                                           }
                                                                           break loop18;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr432);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr433);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc26_ && this)
                                                   {
                                                   }
                                                   §§goto(addr448);
                                                }
                                                §§goto(addr435);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr256);
                                          }
                                       }
                                       addr227:
                                    }
                                    break loop12;
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr227);
                           }
                           §§goto(addr253);
                        }
                     }
                     §§goto(addr255);
                  }
               }
            }
         }
         §§goto(addr241);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
