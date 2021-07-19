package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §+!&§:b2Vec2;
      
      private var §^!'§:b2Vec2;
      
      public var §5!Q§:b2Mat22;
      
      public var §]!%§:Number;
      
      private var §!@§:b2Vec2;
      
      private var §9;§:Number;
      
      private var §-+§:Number;
      
      private var §6H§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+!&§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§^!'§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.§5!Q§ = new b2Mat22();
               while(true)
               {
                  this.§!@§ = new b2Vec2();
                  loop3:
                  while(true)
                  {
                     super(param1);
                     while(true)
                     {
                        this.§+!&§.SetV(param1.§@b§);
                        loop5:
                        while(true)
                        {
                           this.§^!'§.SetV(param1.§=i§);
                           loop6:
                           while(true)
                           {
                              this.§5!Q§.§^!,§();
                              loop7:
                              while(!_loc2_)
                              {
                                 this.§]!%§ = 0;
                                 loop8:
                                 while(true)
                                 {
                                    this.§!@§.§^!,§();
                                    while(!_loc2_)
                                    {
                                       continue loop6;
                                       while(!(_loc2_ && param1))
                                       {
                                          continue loop8;
                                          this.§6H§ = param1.maxTorque;
                                          if(!_loc2_)
                                          {
                                             addr36:
                                             if(!(_loc2_ && param1))
                                             {
                                                return;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        if(_loc3_ || this)
                        {
                           continue loop3;
                        }
                     }
                  }
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
                  this.§9;§ = 0;
                  §§goto(addr68);
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.§+!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.§^!'§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§!@§.x);
            if(!(_loc3_ && param1))
            {
               addr46:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() * this.§!@§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr46);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§9;§;
         }
      }
      
      public function §2!>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§-+§ = param1;
         }
      }
      
      public function §2§() : Number
      {
         return this.§-+§;
      }
      
      public function §4N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§6H§ = param1;
         }
      }
      
      public function §<%§() : Number
      {
         return this.§6H§;
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
         var _loc4_:b2Body = b2internal::#A;
         var _loc5_:b2Body = b2internal::2!`;
         var _loc6_:b2Vec2 = _loc4_.§@S§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§@S§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§",§);
         if(_loc27_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§",§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§-2§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§-2§);
         if(_loc27_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§+!&§.x);
         if(_loc27_ || _loc3_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc26_ && param1))
            {
               addr121:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§+!&§.y);
            if(_loc27_ || _loc3_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc26_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc15_:* = §§pop();
            if(_loc27_ || _loc3_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  while(true)
                  {
                     §§push(_loc14_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc26_ && _loc3_))
                        {
                           §§push(_loc2_.col2);
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
                                 addr258:
                              }
                              addr259:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                              }
                           }
                           addr254:
                        }
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop7:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_.col1);
                                    if(!_loc27_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().y);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(_loc14_);
                                       if(_loc27_ || param1)
                                       {
                                          if(!(_loc26_ && this))
                                          {
                                             if(_loc26_ && this)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * §§pop());
                                             while(true)
                                             {
                                                §§push(_loc2_.col2);
                                                if(!_loc26_)
                                                {
                                                   §§push(§§pop().y);
                                                   if(_loc27_)
                                                   {
                                                      §§push(_loc15_);
                                                      if(!_loc26_)
                                                      {
                                                         addr234:
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            while(!_loc26_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  addr239:
                                                                  addr263:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc27_ || param1)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  _loc2_ = _loc5_.m_xf.R;
                                                                  §§push(this.§^!'§.x);
                                                                  if(!_loc26_)
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                     if(!_loc26_)
                                                                     {
                                                                        addr280:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     var _loc16_:* = §§pop();
                                                                     §§push(this.§^!'§.y);
                                                                     if(!(_loc26_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                        if(!(_loc26_ && this))
                                                                        {
                                                                           addr304:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        var _loc17_:* = §§pop();
                                                                        if(!_loc26_)
                                                                        {
                                                                           §§push(_loc2_.col1);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc26_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc16_);
                                                                              if(!(_loc26_ && this))
                                                                              {
                                                                                 addr415:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col2);
                                                                                    addr417:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                    }
                                                                                 }
                                                                                 addr415:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc17_);
                                                                                 addr419:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr420:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr421:
                                                                                       addr439:
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
                                                                                             continue loop16;
                                                                                          }
                                                                                          §§goto(addr415);
                                                                                       }
                                                                                       addr438:
                                                                                       var _loc19_:Number = §§pop();
                                                                                       §§push(this.§]!%§);
                                                                                       if(!_loc26_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(_loc27_ || this)
                                                                                          {
                                                                                             addr452:
                                                                                             §§push(§§pop() * _loc19_);
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc20_:* = §§pop();
                                                                                          §§push(this.§9;§);
                                                                                          if(_loc27_ || _loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc21_:* = §§pop();
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(param1.§?u§);
                                                                                             if(!(_loc26_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§6H§);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc18_ = §§pop();
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(b2Math);
                                                                                                            §§push(this.§9;§);
                                                                                                            if(!(_loc26_ && this))
                                                                                                            {
                                                                                                               §§push(_loc20_);
                                                                                                               if(!_loc26_)
                                                                                                               {
                                                                                                                  addr624:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  §§push(_loc18_);
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§pop().§9;§ = §§pop().§>I§(§§pop(),§§pop(),_loc18_);
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§9;§);
                                                                                                                  loop30:
                                                                                                                  for(; !(_loc26_ && param1); if(!(_loc27_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§push(_loc13_),if(!_loc26_)
                                                                                                                  {
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§goto(addr501);
                                                                                                                     }
                                                                                                                     §§goto(addr669);
                                                                                                                  },§§goto(addr689))
                                                                                                                  {
                                                                                                                     §§push(_loc21_);
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc20_ = §§pop();
                                                                                                                              loop33:
                                                                                                                              while(!_loc26_)
                                                                                                                              {
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       if(!(_loc26_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             addr501:
                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc27_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr519:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr522:
                                                                                                                                                         _loc9_ = §§pop();
                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc8_.x);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               addr697:
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc27_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr705:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc22_:* = §§pop();
                                                                                                                                                            §§push(_loc8_.y);
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_);
                                                                                                                                                               if(!(_loc26_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc27_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              if(_loc27_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr745:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr755:
                                                                                                                                                                                    §§push(§§pop() - §§pop() * _loc14_);
                                                                                                                                                                                    if(!(_loc26_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr763:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc23_:* = §§pop();
                                                                                                                                                                                    §§push(b2Math);
                                                                                                                                                                                    §§push(this.§5!Q§);
                                                                                                                                                                                    §§push(§§findproperty(b2Vec2));
                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                    if(!(_loc26_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc23_);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    var _loc24_:b2Vec2 = §§pop().§ !$§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                                    var _loc25_:b2Vec2 = this.§!@§.Copy();
                                                                                                                                                                                    if(_loc27_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§!@§);
                                                                                                                                                                                       loop38:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().§ v§(_loc24_);
                                                                                                                                                                                          loop39:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1.§?u§);
                                                                                                                                                                                             loop40:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§-+§);
                                                                                                                                                                                                loop41:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop42:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      loop43:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc18_ = §§pop();
                                                                                                                                                                                                         loop44:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§!@§);
                                                                                                                                                                                                               while(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().§,H§());
                                                                                                                                                                                                                  if(_loc26_ && this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop43;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!(_loc27_ || this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop42;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * _loc18_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop41;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§!@§);
                                                                                                                                                                                                                        loop48:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().Normalize();
                                                                                                                                                                                                                           addr859:
                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop44;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop39;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc24_ = b2Math.§8!Y§(this.§!@§,_loc25_);
                                                                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     loop51:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                                                                        if(_loc27_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                                                                           if(!(_loc26_ && _loc2_))
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
                                                                                                                                                                                                                              if(_loc27_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc24_.y);
                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1076:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc24_.x);
                                                                                                                                                                                                                                       addr1079:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          addr1080:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1077:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1081:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1082:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1083:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr1084:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                                                                                                                 addr1085:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    §§push(_loc8_.x);
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc11_);
                                                                                                                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                    addr1055:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                                                                       §§push(_loc8_.y);
                                                                                                                                                                                                                                       if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr931:
                                                                                                                                                                                                                           if(_loc27_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr901:
                                                                                                                                                                                                                                 if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1085);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       return;
                                                                                                                                                                                                                                       addr919:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1055);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                    §§goto(addr901);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1015:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr931);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                                                                          if(!(_loc26_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc24_.y);
                                                                                                                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr990:
                                                                                                                                                                                                                                                                  §§push(_loc24_.x);
                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr995:
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr998:
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1001:
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1014:
                                                                                                                                                                                                                                                                                    _loc9_ = Number(§§pop());
                                                                                                                                                                                                                                                                                    §§goto(addr1015);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1083);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1084);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1014);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1076);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1080);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1079);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr995);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr998);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1077);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr990);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1081);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr998);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1082);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1001);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1014);
                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr919);
                                                                                                                                                                                                                                    addr1035:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr938:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1035);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop38;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr861);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr755);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr755);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr763);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr755);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr745);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(_loc27_ || this)
                                                                                                                                                            {
                                                                                                                                                               continue loop29;
                                                                                                                                                               §§goto(addr522);
                                                                                                                                                            }
                                                                                                                                                            continue loop33;
                                                                                                                                                            addr574:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr692:
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(!_loc26_)
                                                                                                                                                   {
                                                                                                                                                      addr695:
                                                                                                                                                      §§push(§§pop() * _loc15_);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr697);
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!(_loc26_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr669:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc27_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc26_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      addr689:
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr692);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr705);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr695);
                                                                                                                                                }
                                                                                                                                                §§goto(addr705);
                                                                                                                                             }
                                                                                                                                             §§goto(addr697);
                                                                                                                                          }
                                                                                                                                          §§goto(addr695);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!(_loc27_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          §§goto(addr574);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                              addr481:
                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr705);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr624);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr689);
                                                                                             }
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          §§goto(addr588);
                                                                                       }
                                                                                       §§goto(addr452);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr435);
                                                                           §§push(_loc7_);
                                                                        }
                                                                        §§goto(addr400);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr234:
                                                      }
                                                   }
                                                   §§goto(addr234);
                                                }
                                                else
                                                {
                                                   §§goto(addr254);
                                                }
                                             }
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr234);
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr239);
         }
         §§goto(addr121);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
