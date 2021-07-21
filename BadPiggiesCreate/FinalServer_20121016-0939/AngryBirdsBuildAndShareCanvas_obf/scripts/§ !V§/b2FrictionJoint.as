package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §!"#§:b2Vec2;
      
      private var §>!7§:b2Vec2;
      
      public var §18§:b2Mat22;
      
      public var §&_§:Number;
      
      private var §"w§:b2Vec2;
      
      private var §#"0§:Number;
      
      private var §@!c§:Number;
      
      private var §=!s§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!"#§ = new b2Vec2();
            while(true)
            {
               this.§>!7§ = new b2Vec2();
               loop1:
               for(; _loc2_; while(true)
               {
                  if(!(_loc2_ || _loc3_))
                  {
                     continue loop1;
                  }
                  this.§#"0§ = 0;
                  §§goto(addr71);
               },§§goto(addr147))
               {
                  this.§18§ = new b2Mat22();
                  while(true)
                  {
                     this.§"w§ = new b2Vec2();
                     addr73:
                     if(_loc2_)
                     {
                        this.§@!c§ = param1.§0!`§;
                        loop11:
                        for(; _loc2_; this.§=!s§ = param1.maxTorque,if(_loc3_ && _loc3_)
                        {
                           continue;
                        },if(!_loc3_)
                        {
                           addr42:
                           if(!(_loc3_ && _loc2_))
                           {
                              addr49:
                              if(!(_loc3_ && _loc3_))
                              {
                                 return;
                              }
                              while(!(_loc3_ && param1))
                              {
                                 this.§18§.§@!s§();
                                 §§goto(addr49);
                              }
                              loop4:
                              while(true)
                              {
                                 this.§!"#§.SetV(param1.§!2§);
                                 addr130:
                                 while(true)
                                 {
                                    this.§>!7§.SetV(param1.§ !c§);
                                    continue loop4;
                                 }
                              }
                              addr116:
                              addr135:
                           }
                           while(!_loc3_)
                           {
                              this.§&_§ = 0;
                              §§goto(addr102);
                              §§goto(addr42);
                           }
                           §§goto(addr130);
                        }
                        else
                        {
                           while(_loc2_)
                           {
                              §§goto(addr73);
                           }
                           while(true)
                           {
                              super(param1);
                           }
                           addr71:
                           addr141:
                        },§§goto(addr135))
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           addr102:
                           while(true)
                           {
                              this.§"w§.§@!s§();
                              break loop11;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.§!"#§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.§>!7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§"w§.x);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr42);
            }
            §§goto(addr60);
         }
         addr42:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_ || this)
         {
            addr60:
            §§push(§§pop() * this.§"w§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§#"0§;
         }
      }
      
      public function §+a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!c§ = param1;
         }
      }
      
      public function §;"7§() : Number
      {
         return this.§@!c§;
      }
      
      public function §,!+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=!s§ = param1;
         }
      }
      
      public function §6!4§() : Number
      {
         return this.§=!s§;
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
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:* = NaN;
         var _loc4_:b2Body = b2internal::0"7;
         var _loc5_:b2Body = b2internal:: `;
         var _loc6_:b2Vec2 = _loc4_.§,b§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§,b§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§;k§);
         if(!_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§;k§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§6x§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§6x§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§!"#§.x);
         if(!_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§!"#§.y);
         if(!_loc27_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(_loc26_ || _loc2_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc26_ || _loc2_)
               {
                  §§push(_loc14_);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr163:
                     if(_loc27_ && param1)
                     {
                        continue;
                     }
                     §§push(§§pop() * §§pop());
                     if(!_loc27_)
                     {
                        if(_loc26_ || this)
                        {
                           if(!_loc27_)
                           {
                              §§push(_loc2_.col2);
                              if(!_loc27_)
                              {
                                 §§push(§§pop().y);
                                 if(!_loc27_)
                                 {
                                    addr189:
                                    if(_loc26_)
                                    {
                                       §§push(_loc15_);
                                       if(!_loc27_)
                                       {
                                          addr195:
                                          §§push(§§pop() * §§pop());
                                          if(_loc26_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc15_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc27_)
                                                      {
                                                         if(_loc27_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(!(_loc26_ || param1))
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc26_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc26_)
                                                      {
                                                         _loc14_ = §§pop();
                                                         if(_loc27_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc27_)
                                                         {
                                                            while(false)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc2_ = _loc5_.m_xf.R;
                                                            §§push(this.§>!7§.x);
                                                            if(_loc26_)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                               if(_loc26_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc16_:* = §§pop();
                                                            §§push(this.§>!7§.y);
                                                            if(_loc26_ || this)
                                                            {
                                                               §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc17_:* = §§pop();
                                                            if(_loc26_ || param1)
                                                            {
                                                               §§push(_loc2_.col1);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc16_);
                                                                     if(!(_loc27_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc27_)
                                                                        {
                                                                           §§push(_loc2_.col2);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc26_)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr386:
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.col1);
                                                                                                   if(!_loc26_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            addr320:
                                                                                                            §§push(_loc2_.col2);
                                                                                                            if(_loc27_)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc26_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               if(_loc26_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr394:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     addr397:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     break loop17;
                                                                                                                  }
                                                                                                                  break loop17;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!(_loc26_ || this))
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!(_loc27_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc26_ || param1))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               _loc17_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc27_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                                  addr296:
                                                                                                                  _loc16_ = §§pop();
                                                                                                                  if(_loc27_ && param1)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           addr393:
                                                                                                                           §§goto(addr394);
                                                                                                                           §§push(_loc7_);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr397);
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      §§goto(addr394);
                                                                                                   }
                                                                                                   §§goto(addr320);
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr386);
                                                                  }
                                                                  var _loc19_:* = §§pop();
                                                                  §§push(this.§&_§);
                                                                  if(_loc26_ || _loc2_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(_loc26_)
                                                                     {
                                                                        addr411:
                                                                        §§push(§§pop() * _loc19_);
                                                                        if(!(_loc27_ && this))
                                                                        {
                                                                           addr420:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc20_:* = §§pop();
                                                                        §§push(this.§#"0§);
                                                                        if(_loc26_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc21_:* = §§pop();
                                                                        if(!(_loc27_ && param1))
                                                                        {
                                                                           §§push(param1.§+z§);
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=!s§);
                                                                              if(!(_loc27_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc18_ = §§pop();
                                                                                       addr622:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(b2Math);
                                                                                          §§push(this.§#"0§);
                                                                                          if(!(_loc27_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc20_);
                                                                                             if(!(_loc27_ && this))
                                                                                             {
                                                                                                addr595:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                §§push(_loc18_);
                                                                                                if(_loc26_ || _loc3_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                }
                                                                                             }
                                                                                             §§pop().§#"0§ = §§pop().§&>§(§§pop(),§§pop(),_loc18_);
                                                                                             loop60:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#"0§);
                                                                                                if(!(_loc27_ && this))
                                                                                                {
                                                                                                   §§push(_loc21_);
                                                                                                   if(_loc26_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr477:
                                                                                                         if(!(_loc26_ || _loc2_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         addr665:
                                                                                                         addr665:
                                                                                                         addr665:
                                                                                                         var _loc22_:Number = §§pop();
                                                                                                         addr664:
                                                                                                         §§push(_loc8_.y);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               §§push(_loc16_);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc26_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr692:
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc27_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr704:
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr714:
                                                                                                                                 §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    addr717:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 var _loc23_:* = §§pop();
                                                                                                                                 §§push(b2Math);
                                                                                                                                 §§push(this.§18§);
                                                                                                                                 §§push(§§findproperty(b2Vec2));
                                                                                                                                 §§push(_loc22_);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 §§push(_loc23_);
                                                                                                                                 if(_loc26_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                 }
                                                                                                                                 var _loc24_:b2Vec2 = §§pop().§0b§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                 var _loc25_:b2Vec2 = this.§"w§.Copy();
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§"w§);
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§1v§(_loc24_);
                                                                                                                                       loop32:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§+z§);
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§@!c§);
                                                                                                                                             addr824:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   addr829:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr764:
                                                                                                                                                      addr835:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§"w§);
                                                                                                                                                         if(_loc26_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().§%"§());
                                                                                                                                                            if(!(_loc27_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            continue loop35;
                                                                                                                                                         }
                                                                                                                                                         addr808:
                                                                                                                                                         loop39:
                                                                                                                                                         while(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().Normalize();
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc26_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§"w§);
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§>!t§(_loc18_);
                                                                                                                                                                     if(!(_loc27_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                               continue loop32;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                      addr835:
                                                                                                                                                      _loc24_ = b2Math.§'!%§(this.§"w§,_loc25_);
                                                                                                                                                      if(_loc26_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc10_);
                                                                                                                                                            if(_loc26_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * _loc24_.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                         loop41:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * _loc24_.y);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            loop42:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!(_loc27_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                  loop43:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     loop44:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc24_.y);
                                                                                                                                                                        if(_loc26_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              addr925:
                                                                                                                                                                              if(_loc27_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                              if(_loc26_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr940:
                                                                                                                                                                                 §§push(_loc24_.x);
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr945:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr948:
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr951:
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop50:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          addr1057:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop52:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                loop53:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   §§push(_loc8_.x);
                                                                                                                                                                                                   if(_loc26_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                                                                      if(_loc26_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   loop54:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      §§push(_loc8_.y);
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(_loc26_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      loop55:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(!(_loc26_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr976:
                                                                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                                                                            while(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                  loop57:
                                                                                                                                                                                                                  while(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                        if(_loc26_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop54;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop57;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(!(_loc27_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            if(_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc24_.y);
                                                                                                                                                                                                               if(!(_loc27_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc26_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr918:
                                                                                                                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr925);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1055:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1055);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1054:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr940);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr918);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr951);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop50;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc24_.x);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1051:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1054);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr945);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1051);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1057);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr876);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr764);
                                                                                                                                    }
                                                                                                                                    §§goto(addr835);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr714);
                                                                                                                           }
                                                                                                                           §§goto(addr717);
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                     §§goto(addr704);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr714);
                                                                                                         }
                                                                                                         §§goto(addr692);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr641:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc26_)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            break loop28;
                                                                                                         }
                                                                                                         addr656:
                                                                                                         §§push(§§pop() + §§pop() * _loc15_);
                                                                                                         if(_loc26_ || _loc2_)
                                                                                                         {
                                                                                                            §§goto(addr664);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr665);
                                                                                                   }
                                                                                                }
                                                                                                addr565:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc20_ = §§pop();
                                                                                                   continue loop60;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr595);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc26_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!_loc26_)
                                                                              {
                                                                              }
                                                                              §§goto(addr656);
                                                                           }
                                                                           §§goto(addr665);
                                                                        }
                                                                        §§goto(addr622);
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr304);
                                                            addr142:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.col2);
                                                            addr215:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               addr216:
                                                               while(true)
                                                               {
                                                                  §§push(_loc15_);
                                                                  addr217:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     addr218:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr219:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr220:
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
                                                         addr213:
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§push(_loc14_);
                                                      if(_loc26_ || this)
                                                      {
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr189);
                                                   }
                                                }
                                             }
                                             addr198:
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr215);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr198);
                  }
               }
               §§goto(addr213);
            }
         }
         §§goto(addr142);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
