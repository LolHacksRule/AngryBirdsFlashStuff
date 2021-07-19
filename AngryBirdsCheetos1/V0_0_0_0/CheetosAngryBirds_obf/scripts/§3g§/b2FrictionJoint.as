package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var § get§:b2Vec2;
      
      private var §2>§:b2Vec2;
      
      public var §`!F§:b2Mat22;
      
      public var §'4§:Number;
      
      private var §&K§:b2Vec2;
      
      private var §>!?§:Number;
      
      private var §9Z§:Number;
      
      private var §0!O§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ get§ = new b2Vec2();
            while(true)
            {
               this.§2>§ = new b2Vec2();
               while(!_loc2_)
               {
                  loop5:
                  while(!(_loc2_ && param1))
                  {
                     this.§ get§.SetV(param1.§4B§);
                     loop6:
                     while(true)
                     {
                        this.§2>§.SetV(param1.§ !Q§);
                        loop7:
                        while(true)
                        {
                           if(_loc2_ && this)
                           {
                              continue loop6;
                           }
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           this.§`!F§.§^!#§();
                           loop8:
                           while(true)
                           {
                              this.§'4§ = 0;
                              loop9:
                              do
                              {
                                 this.§&K§.§^!#§();
                                 loop10:
                                 while(!_loc2_)
                                 {
                                    this.§>!?§ = 0;
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          this.§9Z§ = param1.§5!-§;
                                          while(_loc3_)
                                          {
                                             this.§0!O§ = param1.maxTorque;
                                             if(_loc3_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop5;
                                 }
                                 continue loop8;
                              }
                              while(!(_loc3_ || _loc2_));
                              
                              continue loop7;
                           }
                        }
                        addr140:
                        addr148:
                        while(!_loc2_)
                        {
                           super(param1);
                           continue loop5;
                           §§goto(addr108);
                        }
                        while(true)
                        {
                           this.§&K§ = new b2Vec2();
                           §§goto(addr140);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§`!F§ = new b2Mat22();
            §§goto(addr148);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.§ get§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.§2>§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§&K§.x);
            if(_loc3_)
            {
               addr52:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() * this.§&K§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && this))
         {
            return §§pop() * this.§>!?§;
         }
      }
      
      public function §]4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9Z§ = param1;
         }
      }
      
      public function §!'§() : Number
      {
         return this.§9Z§;
      }
      
      public function §`F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0!O§ = param1;
         }
      }
      
      public function §5[§() : Number
      {
         return this.§0!O§;
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
         var _loc4_:b2Body = b2internal::2!D;
         var _loc5_:b2Body = b2internal::;B;
         var _loc6_:b2Vec2 = _loc4_.§%=§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%=§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§]m§);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§]m§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§?0§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§?0§);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ get§.x);
         if(!(_loc26_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc26_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§ get§.y);
         if(!_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!(_loc26_ && _loc3_))
            {
               addr145:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(_loc27_ || _loc3_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc27_ || _loc2_)
                  {
                     §§push(_loc14_);
                     if(_loc27_ || _loc2_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc26_)
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr255:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr256:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr257:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc26_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr265:
                                       }
                                    }
                                 }
                              }
                           }
                           addr254:
                        }
                        loop2:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc2_.col1);
                                 if(!_loc27_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop().y);
                                 if(_loc27_)
                                 {
                                    if(_loc26_)
                                    {
                                       break;
                                    }
                                    §§push(_loc14_);
                                    if(_loc27_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc27_ || param1)
                                       {
                                          §§push(_loc2_.col2);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop().y);
                                             if(!_loc26_)
                                             {
                                                if(_loc27_)
                                                {
                                                   if(!_loc26_)
                                                   {
                                                      §§push(_loc15_);
                                                      if(_loc27_)
                                                      {
                                                         addr220:
                                                         §§push(§§pop() + §§pop() * §§pop());
                                                         if(!(_loc26_ && param1))
                                                         {
                                                            addr228:
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc15_ = §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc26_)
                                                                  {
                                                                     if(!_loc27_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc14_ = §§pop();
                                                                  if(_loc26_ && param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc26_ && _loc3_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(false)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  _loc2_ = _loc5_.m_xf.R;
                                                                  §§push(this.§2>§.x);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                     if(_loc27_)
                                                                     {
                                                                        addr285:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc16_:* = §§pop();
                                                                     §§push(this.§2>§.y);
                                                                     if(_loc27_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                        if(_loc27_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     var _loc17_:* = §§pop();
                                                                     if(_loc27_ || _loc2_)
                                                                     {
                                                                        §§push(_loc2_.col1);
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              if(_loc27_ || param1)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          addr431:
                                                                                       }
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr435:
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.col1);
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         §§push(§§pop().y);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         if(!_loc26_)
                                                                                                         {
                                                                                                            §§push(_loc16_);
                                                                                                            if(!(_loc26_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  §§push(_loc2_.col2);
                                                                                                                  if(_loc26_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc27_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     §§push(_loc17_);
                                                                                                                     if(!_loc26_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                     §§goto(addr431);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc26_ && _loc3_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                     }
                                                                                                                     if(!(_loc26_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!(_loc26_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(!(_loc27_ || this))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           addr448:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           break loop20;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr449:
                                                                                                var _loc19_:* = §§pop();
                                                                                                §§push(this.§'4§);
                                                                                                if(!(_loc26_ && _loc2_))
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      addr462:
                                                                                                      §§push(§§pop() * _loc19_);
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         addr471:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc20_:* = §§pop();
                                                                                                      §§push(this.§>!?§);
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc21_:* = §§pop();
                                                                                                      if(_loc27_ || this)
                                                                                                      {
                                                                                                         §§push(param1.§%G§);
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§0!O§);
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc27_ || this)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc18_ = §§pop();
                                                                                                                     loop26:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(b2Math);
                                                                                                                        §§push(this.§>!?§);
                                                                                                                        if(!(_loc26_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                           {
                                                                                                                              addr651:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              §§push(_loc18_);
                                                                                                                              if(_loc27_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr659:
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§pop().§>!?§ = §§pop().§?!&§(§§pop(),§§pop(),_loc18_);
                                                                                                                              loop27:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§>!?§);
                                                                                                                                 loop28:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc21_);
                                                                                                                                    loop29:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       addr613:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                          {
                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                             loop31:
                                                                                                                                             for(; !(_loc26_ && this); if(!(_loc27_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },if(false)
                                                                                                                                             {
                                                                                                                                                §§goto(addr574);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_.x);
                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                {
                                                                                                                                                   addr688:
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr691);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr725);
                                                                                                                                                }
                                                                                                                                             },§§goto(addr705))
                                                                                                                                             {
                                                                                                                                                loop32:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                         loop33:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            loop34:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               if(!(_loc27_ || this))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               _loc7_ = §§pop();
                                                                                                                                                               while(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc27_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop33;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr725:
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                        }
                                                                                                                                                                        addr727:
                                                                                                                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop24;
                                                                                                                                                                        }
                                                                                                                                                                        break loop32;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  addr705:
                                                                                                                                                                  addr705:
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  if(_loc27_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        break loop34;
                                                                                                                                                                     }
                                                                                                                                                                     break loop24;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr725);
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               addr523:
                                                                                                                                                               continue loop27;
                                                                                                                                                               if(!(_loc27_ || _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop23;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr725);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr727);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr691:
                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                      if(!_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc26_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr705);
                                                                                                                                                            }
                                                                                                                                                            break loop24;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr725);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr727);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                var _loc22_:* = §§pop();
                                                                                                                                                §§push(_loc8_.y);
                                                                                                                                                if(_loc27_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   if(!(_loc26_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(!(_loc26_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                               if(!(_loc26_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr777:
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr780:
                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     addr785:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        addr789:
                                                                                                                                                                        var _loc23_:Number = §§pop();
                                                                                                                                                                        §§push(b2Math);
                                                                                                                                                                        §§push(this.§`!F§);
                                                                                                                                                                        §§push(§§findproperty(b2Vec2));
                                                                                                                                                                        §§push(_loc22_);
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                        }
                                                                                                                                                                        var _loc24_:b2Vec2 = §§pop().§ set§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                        var _loc25_:b2Vec2 = this.§&K§.Copy();
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           addr903:
                                                                                                                                                                           this.§&K§.§`!§(_loc24_);
                                                                                                                                                                           addr899:
                                                                                                                                                                           §§push(param1.§%G§);
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              addr897:
                                                                                                                                                                              §§push(Number(§§pop() * this.§9Z§));
                                                                                                                                                                           }
                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                           addr856:
                                                                                                                                                                           addr905:
                                                                                                                                                                           addr900:
                                                                                                                                                                           §§push(this.§&K§.§?a§());
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * _loc18_);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       addr882:
                                                                                                                                                                                       §§push(this.§&K§);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().Normalize();
                                                                                                                                                                                          addr887:
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§&K§);
                                                                                                                                                                                             if(!(_loc26_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().§?Q§(_loc18_);
                                                                                                                                                                                                   if(!(_loc26_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr856);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr906:
                                                                                                                                                                                                            _loc24_ = b2Math.§?d§(this.§&K§,_loc25_);
                                                                                                                                                                                                            if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                               if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                               addr1184:
                                                                                                                                                                                                               addr1160:
                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                               if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1113:
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  §§push(_loc24_.y);
                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1138:
                                                                                                                                                                                                                     addr1137:
                                                                                                                                                                                                                     addr1136:
                                                                                                                                                                                                                     addr1139:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc27_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1135:
                                                                                                                                                                                                                        §§push(§§pop() - _loc15_ * _loc24_.x);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc7_ = Number(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     §§push(_loc8_.x);
                                                                                                                                                                                                                     if(_loc27_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                        if(!(_loc26_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     §§push(_loc8_.y);
                                                                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                        if(_loc27_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     addr1102:
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                 if(!(_loc26_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc24_.y);
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr982:
                                                                                                                                                                                                                                          if(!(_loc26_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc24_.x);
                                                                                                                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1011:
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc27_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1019:
                                                                                                                                                                                                                                                            §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1032:
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1138);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                                                                                                                  addr1036:
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                                        addr945:
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1184);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1036);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr945);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1102);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1160);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1138);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1113);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1137);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1135);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1011);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1113);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1136);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1019);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1011);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr982);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1019);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1139);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1032);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1140:
                                                                                                                                                                                                                     §§goto(addr1140);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1135);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1138);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr905);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr882);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr887);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr856);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr882);
                                                                                                                                                                                             addr889:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr900);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr903);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr906);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr897);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr889);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr789);
                                                                                                                                                               }
                                                                                                                                                               addr784:
                                                                                                                                                               §§goto(addr785);
                                                                                                                                                               §§push(§§pop() * _loc14_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr789);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr777);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr784);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr785);
                                                                                                                                                }
                                                                                                                                                §§goto(addr780);
                                                                                                                                             }
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          §§goto(addr722);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr663:
                                                                                                                           }
                                                                                                                           §§goto(addr659);
                                                                                                                        }
                                                                                                                        §§goto(addr651);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr677:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr731);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr663);
                                                                                                   }
                                                                                                   §§goto(addr471);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc27_ || this)
                                                                           {
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr449);
                                                                        }
                                                                     }
                                                                     §§goto(addr435);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                            addr229:
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr220);
                                          }
                                          else
                                          {
                                             §§goto(addr254);
                                          }
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr228);
                              }
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr265);
               }
            }
            §§goto(addr177);
         }
         §§goto(addr145);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
