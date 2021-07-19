package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §1@§:b2Vec2;
      
      private var §8!%§:b2Vec2;
      
      public var §1!]§:b2Mat22;
      
      public var §<m§:Number;
      
      private var §20§:b2Vec2;
      
      private var §4!K§:Number;
      
      private var §!6§:Number;
      
      private var §&!§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1@§ = new b2Vec2();
            while(true)
            {
               this.§8!%§ = new b2Vec2();
               while(!_loc2_)
               {
                  this.§1!]§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§20§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super(param1);
                        while(true)
                        {
                           this.§1@§.SetV(param1.§;9§);
                           continue loop2;
                           addr91:
                           if(_loc3_ || this)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8!%§.SetV(param1.§-y§);
            §§goto(addr112);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.§1@§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.§8!%§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§20§.x);
            if(!(_loc2_ && this))
            {
               §§goto(addr57);
            }
            §§goto(addr60);
         }
         addr57:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc3_)
         {
            addr60:
            §§push(§§pop() * this.§20§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && this))
         {
            return §§pop() * this.§4!K§;
         }
      }
      
      public function §^!!§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!6§ = param1;
         }
      }
      
      public function §=!]§() : Number
      {
         return this.§!6§;
      }
      
      public function §-!&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§&!§ = param1;
         }
      }
      
      public function §!f§() : Number
      {
         return this.§&!§;
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
         var _loc4_:b2Body = b2internal::`p;
         var _loc5_:b2Body = b2internal::%^;
         var _loc6_:b2Vec2 = _loc4_.§,?§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§,?§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§#!D§);
         if(!(_loc26_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§#!D§);
         if(!(_loc26_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§?8§);
         if(!(_loc26_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§?8§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§1@§.x);
         if(!(_loc26_ && param1))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc27_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§1@§.y);
         if(!_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc26_)
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
                  addr247:
                  while(true)
                  {
                     §§push(_loc14_);
                     addr248:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr249:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr251:
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
                                       addr255:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr256:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr257:
                                             while(true)
                                             {
                                                continue loop0;
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
            while(false)
            {
               §§goto(addr173);
            }
            _loc2_ = _loc5_.m_xf.R;
            §§push(this.§8!%§.x);
            if(_loc27_ || _loc2_)
            {
               §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
               if(!(_loc26_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc16_:* = §§pop();
            §§push(this.§8!%§.y);
            if(!(_loc26_ && this))
            {
               §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
               if(!_loc26_)
               {
                  addr304:
                  §§push(Number(§§pop()));
               }
               var _loc17_:* = §§pop();
               if(!(_loc26_ && param1))
               {
                  §§push(_loc2_.col1);
                  loop16:
                  while(true)
                  {
                     §§push(§§pop().x);
                     if(_loc27_)
                     {
                        §§push(_loc16_);
                        loop17:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop18:
                           while(true)
                           {
                              §§push(_loc2_.col2);
                              loop19:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 loop20:
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    loop21:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop22:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop23:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop24:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                loop25:
                                                while(true)
                                                {
                                                   loop26:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      if(!_loc27_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!_loc26_)
                                                      {
                                                         §§push(_loc16_);
                                                         if(!(_loc26_ && this))
                                                         {
                                                            if(!_loc27_)
                                                            {
                                                               continue loop22;
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc26_)
                                                            {
                                                               addr347:
                                                               if(_loc27_)
                                                               {
                                                                  §§push(_loc2_.col2);
                                                                  if(_loc27_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!_loc27_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc17_);
                                                                     if(!(_loc26_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc26_ && this))
                                                                        {
                                                                           addr377:
                                                                           if(_loc26_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           if(!_loc27_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc27_)
                                                                           {
                                                                              if(!(_loc27_ || param1))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc26_)
                                                                              {
                                                                                 if(!_loc26_)
                                                                                 {
                                                                                    _loc17_ = §§pop();
                                                                                    loop27:
                                                                                    while(!_loc26_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc26_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc26_)
                                                                                             {
                                                                                                _loc16_ = §§pop();
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   continue loop27;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr434:
                                                                                                addr434:
                                                                                                §§push(_loc9_);
                                                                                                if(!(_loc26_ && this))
                                                                                                {
                                                                                                   addr424:
                                                                                                   §§push(_loc7_);
                                                                                                   break loop26;
                                                                                                }
                                                                                                var _loc19_:* = §§pop();
                                                                                                §§push(this.§<m§);
                                                                                                if(!_loc26_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      addr442:
                                                                                                      §§push(§§pop() * _loc19_);
                                                                                                      if(!(_loc26_ && this))
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc20_:* = §§pop();
                                                                                                   §§push(this.§4!K§);
                                                                                                   if(!(_loc26_ && this))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc21_:* = §§pop();
                                                                                                   if(_loc27_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(param1.§7!?§);
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§&!§);
                                                                                                         if(!(_loc26_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc27_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc18_ = §§pop();
                                                                                                                  addr658:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(b2Math);
                                                                                                                     §§push(this.§4!K§);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(_loc20_);
                                                                                                                        if(!_loc26_)
                                                                                                                        {
                                                                                                                           addr622:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           §§push(_loc18_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              addr625:
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§pop().§4!K§ = §§pop().§-!1§(§§pop(),§§pop(),_loc18_);
                                                                                                                           while(!(_loc26_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§4!K§);
                                                                                                                              if(!(_loc26_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 if(_loc27_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    addr685:
                                                                                                                                    addr695:
                                                                                                                                    addr685:
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    if(!_loc26_)
                                                                                                                                    {
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                    §§push(_loc15_);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr671:
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc27_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr682:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr685);
                                                                                                                                          }
                                                                                                                                          addr692:
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr685);
                                                                                                                                          }
                                                                                                                                          addr697:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc27_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr706:
                                                                                                                                             var _loc22_:Number = §§pop();
                                                                                                                                             §§push(_loc8_.y);
                                                                                                                                             if(_loc27_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                if(!_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                   if(!(_loc26_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc27_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc27_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr743:
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            if(!_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr758:
                                                                                                                                                                     §§push(§§pop() * _loc14_);
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     addr763:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  var _loc23_:* = §§pop();
                                                                                                                                                                  §§push(b2Math);
                                                                                                                                                                  §§push(this.§1!]§);
                                                                                                                                                                  §§push(§§findproperty(b2Vec2));
                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                  if(!(_loc26_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                  }
                                                                                                                                                                  var _loc24_:b2Vec2 = §§pop().§2!3§(§§pop(),new §§pop().b2Vec2(§§pop(),§§pop()));
                                                                                                                                                                  var _loc25_:b2Vec2 = this.§20§.Copy();
                                                                                                                                                                  if(!(_loc26_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§20§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§-i§(_loc24_);
                                                                                                                                                                     }
                                                                                                                                                                     addr878:
                                                                                                                                                                  }
                                                                                                                                                                  loop32:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§7!?§);
                                                                                                                                                                     if(!(_loc26_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§!6§);
                                                                                                                                                                        loop33:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              addr871:
                                                                                                                                                                           }
                                                                                                                                                                           loop34:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc18_ = §§pop();
                                                                                                                                                                              loop35:
                                                                                                                                                                              while(!_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 loop36:
                                                                                                                                                                                 do
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§20§);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().§27§());
                                                                                                                                                                                       if(!(_loc26_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * _loc18_);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§20§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().Normalize();
                                                                                                                                                                                             }
                                                                                                                                                                                             addr847:
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc27_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§20§);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().§@-§(_loc18_);
                                                                                                                                                                                                   if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop36;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr878);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr847);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(false);
                                                                                                                                                                                 
                                                                                                                                                                                 _loc24_ = b2Math.§4_§(this.§20§,_loc25_);
                                                                                                                                                                                 if(_loc27_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(_loc27_ || _loc2_)
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
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr1134:
                                                                                                                                                                                    addr1105:
                                                                                                                                                                                    §§push(_loc7_);
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc12_);
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc24_.y);
                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1077:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1075:
                                                                                                                                                                                                   §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() - §§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1082:
                                                                                                                                                                                                   _loc7_ = Number(§§pop());
                                                                                                                                                                                                   if(!(_loc26_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      §§push(_loc8_.x);
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * _loc24_.x);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      addr1047:
                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         §§push(_loc8_.y);
                                                                                                                                                                                                         if(_loc27_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            if(!(_loc26_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * _loc24_.y);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                         addr1027:
                                                                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc26_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     if(!(_loc26_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc24_.y);
                                                                                                                                                                                                                        if(_loc27_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr974:
                                                                                                                                                                                                                                    §§push(_loc24_.x);
                                                                                                                                                                                                                                    if(!(_loc26_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr984:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr987:
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr995:
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr998:
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                                                                             addr1000:
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc4_.m_angularVelocity = _loc7_;
                                                                                                                                                                                                                                                addr925:
                                                                                                                                                                                                                                                if(!_loc26_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc5_.m_angularVelocity = _loc9_;
                                                                                                                                                                                                                                                   if(_loc27_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc27_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1047);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         return;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1000);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr925);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1134);
                                                                                                                                                                                                                                                addr1002:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1027);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1077);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1075);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr984);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1077);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr987);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr974);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr987);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1077);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr995);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1082);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr998);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1082);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1105);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1082);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1075);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1077);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1082);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1002);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr871);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr758);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr763);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr758);
                                                                                                                                             }
                                                                                                                                             §§goto(addr743);
                                                                                                                                          }
                                                                                                                                          §§goto(addr706);
                                                                                                                                       }
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr696:
                                                                                                                                 §§goto(addr697);
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr706);
                                                                                                                              if(_loc26_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc12_);
                                                                                                                                       loop44:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc20_);
                                                                                                                                          if(!_loc26_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc27_)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                         if(!(_loc26_ && this))
                                                                                                                                                         {
                                                                                                                                                            continue loop44;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr682);
                                                                                                                                                      }
                                                                                                                                                      addr663:
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc27_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr671);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr695);
                                                                                                                                                      addr572:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr706);
                                                                                                                                                }
                                                                                                                                                §§goto(addr692);
                                                                                                                                             }
                                                                                                                                             §§goto(addr671);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr696);
                                                                                                                                    }
                                                                                                                                    §§goto(addr706);
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                                 addr544:
                                                                                                                              }
                                                                                                                              §§push(_loc8_.x);
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 §§goto(addr663);
                                                                                                                              }
                                                                                                                              §§goto(addr706);
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§goto(addr625);
                                                                                                                     }
                                                                                                                     §§goto(addr622);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr706);
                                                                                                         }
                                                                                                         break;
                                                                                                         if(_loc26_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(!(_loc26_ && param1))
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            if(!_loc26_)
                                                                                                            {
                                                                                                               §§goto(addr528);
                                                                                                            }
                                                                                                            §§goto(addr572);
                                                                                                         }
                                                                                                         §§goto(addr706);
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc27_)
                                                                                                      {
                                                                                                         §§goto(addr682);
                                                                                                      }
                                                                                                      §§goto(addr706);
                                                                                                   }
                                                                                                   §§goto(addr658);
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr424);
                                                                                       }
                                                                                    }
                                                                                    continue loop25;
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           §§goto(addr424);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               continue loop24;
                                                            }
                                                            §§goto(addr434);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr377);
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc27_ || _loc2_)
                                                   {
                                                      §§goto(addr433);
                                                   }
                                                   §§goto(addr434);
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
                     §§goto(addr424);
                  }
               }
               §§goto(addr399);
            }
            §§goto(addr304);
         }
         §§goto(addr135);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
