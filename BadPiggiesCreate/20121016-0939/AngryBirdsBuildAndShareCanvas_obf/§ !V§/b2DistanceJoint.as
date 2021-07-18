package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJoint extends b2Joint
   {
       
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var §?!l§:b2Vec2;
      
      private var §,!9§:Number;
      
      private var §?!H§:Number;
      
      private var §<l§:Number;
      
      private var §^!q§:Number;
      
      private var §?;§:Number;
      
      private var §@e§:Number;
      
      private var § [§:Number;
      
      public function b2DistanceJoint(param1:b2DistanceJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.m_localAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_localAnchor2 = new b2Vec2();
               while(true)
               {
                  this.§?!l§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super(param1);
                     while(true)
                     {
                        this.m_localAnchor1.SetV(param1.§!2§);
                        addr127:
                        while(!_loc5_)
                        {
                           this.m_localAnchor2.SetV(param1.§ !c§);
                           while(true)
                           {
                              this.§ [§ = param1.length;
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§,!9§ = param1.§2!5§;
            §§goto(addr98);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§?;§);
            if(!(_loc2_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && param1))
               {
                  §§push(this.§?!l§.x);
                  if(_loc3_)
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(this.§?;§);
                        if(_loc3_)
                        {
                           §§goto(addr83);
                        }
                        addr83:
                        §§push(§§pop() * §§pop());
                        if(!(_loc2_ && param1))
                        {
                           addr79:
                           §§push(this.§?!l§.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr79);
               }
               §§goto(addr54);
            }
            §§goto(addr83);
         }
         §§goto(addr54);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §]"3§() : Number
      {
         return this.§ [§;
      }
      
      public function §!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ [§ = param1;
         }
      }
      
      public function §=Y§() : Number
      {
         return this.§,!9§;
      }
      
      public function §1"#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!9§ = param1;
         }
      }
      
      public function §-t§() : Number
      {
         return this.§?!H§;
      }
      
      public function §;;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§?!H§ = param1;
         }
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
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:b2Body = b2internal::0"7;
         var _loc4_:b2Body = b2internal:: `;
         _loc2_ = _loc3_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(!_loc18_)
         {
            §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
            if(_loc19_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc18_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
               if(_loc19_ || this)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc2_.col1.x);
               if(_loc19_ || param1)
               {
                  §§push(_loc5_);
                  if(!_loc18_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && this))
                     {
                        §§push(_loc2_.col2.x);
                        if(!_loc18_)
                        {
                           addr90:
                           §§push(§§pop() * _loc6_);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc19_ || this)
                        {
                        }
                        addr101:
                        var _loc7_:* = §§pop();
                        if(!(_loc18_ && _loc2_))
                        {
                           §§push(_loc2_.col1.y);
                           if(!_loc18_)
                           {
                              §§push(_loc5_);
                              if(!_loc18_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc18_)
                                 {
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc18_ && param1))
                                    {
                                       addr132:
                                       §§push(§§pop() + §§pop() * _loc6_);
                                       if(_loc19_)
                                       {
                                          addr135:
                                          §§push(Number(§§pop()));
                                          if(!_loc18_)
                                          {
                                             addr138:
                                             _loc6_ = §§pop();
                                             if(_loc19_ || param1)
                                             {
                                                addr146:
                                                §§push(_loc7_);
                                                if(!_loc18_)
                                                {
                                                   addr150:
                                                   _loc5_ = Number(§§pop());
                                                }
                                                §§goto(addr150);
                                             }
                                             _loc2_ = _loc4_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc8_:* = §§pop();
                                             §§push(this.m_localAnchor2.y);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                if(_loc19_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc9_:* = §§pop();
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(_loc2_.col1);
                                                loop0:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc18_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc18_ && _loc2_))
                                                         {
                                                            §§push(_loc2_.col2);
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().x);
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 loop7:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.col1);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc19_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!(_loc19_ || _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr261:
                                                                                          §§push(_loc2_.col2);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc19_ || _loc2_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr296:
                                                                                          if(_loc18_ && this)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       while(!(_loc18_ && param1))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             addr313:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc18_ && _loc3_)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue loop1;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                addr394:
                                                                                                addr393:
                                                                                                addr393:
                                                                                                var _loc10_:Number = §§pop();
                                                                                                §§push(_loc3_.§,b§.y);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(_loc3_.m_angularVelocity);
                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc5_);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc11_:* = §§pop();
                                                                                                §§push(_loc4_.§,b§.x);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(_loc4_.m_angularVelocity);
                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                         addr438:
                                                                                                         §§push(§§pop() * _loc9_);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         addr444:
                                                                                                         var _loc12_:Number = §§pop();
                                                                                                         §§push(_loc4_.§,b§.y);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(_loc4_.m_angularVelocity);
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc8_);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               addr474:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc13_:* = §§pop();
                                                                                                            §§push(this.§?!l§.x);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(this.§?!l§.y);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           addr514:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              addr518:
                                                                                                                              var _loc14_:Number = §§pop();
                                                                                                                              §§push(this.§@e§);
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    addr526:
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    if(!(_loc18_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§^!q§);
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc19_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr546:
                                                                                                                                             §§push(this.§<l§);
                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr558:
                                                                                                                                                §§push(§§pop() + §§pop() * this.§?;§);
                                                                                                                                             }
                                                                                                                                             §§goto(addr558);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             addr563:
                                                                                                                                             var _loc15_:Number = §§pop();
                                                                                                                                             if(_loc19_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§?;§);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + _loc15_);
                                                                                                                                                }
                                                                                                                                                §§pop().§?;§ = §§pop();
                                                                                                                                             }
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§?!l§.x);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             var _loc16_:* = §§pop();
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * this.§?!l§.y);
                                                                                                                                                if(_loc19_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr604:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc17_:* = §§pop();
                                                                                                                                                if(_loc19_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.§,b§);
                                                                                                                                                   loop11:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc3_.§,b§);
                                                                                                                                                      loop12:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         loop13:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§;k§);
                                                                                                                                                            loop14:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               loop15:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop16:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop17:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.§,b§);
                                                                                                                                                                           loop19:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.§,b§);
                                                                                                                                                                              loop20:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 loop21:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_.§;k§);
                                                                                                                                                                                    loop22:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                       loop23:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          loop24:
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             for(; _loc19_; if(!(_loc19_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },if(!(_loc19_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                             },§§push(_loc4_.§;k§),if(_loc19_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc19_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr731:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr738:
                                                                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr748);
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         addr794:
                                                                                                                                                                                                         while(_loc19_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                         §§goto(addr738);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr793:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr807);
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      §§goto(addr731);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr794);
                                                                                                                                                                                             },§§goto(addr731))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                loop26:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                   §§push(_loc3_.m_angularVelocity);
                                                                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc3_.§6x§);
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr869:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc19_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr857:
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  if(!(_loc18_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr865:
                                                                                                                                                                                                                     §§push(§§pop() * _loc16_);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().m_angularVelocity = §§pop() - §§pop() * §§pop();
                                                                                                                                                                                                               loop27:
                                                                                                                                                                                                               while(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_.§,b§);
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr815:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc4_.§,b§);
                                                                                                                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr678:
                                                                                                                                                                                                                              §§push(_loc4_.§,b§);
                                                                                                                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(!(_loc18_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr748:
                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr769:
                                                                                                                                                                                                                              while(_loc19_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop12;
                                                                                                                                                                                                                                 §§goto(addr678);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop19;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop11;
                                                                                                                                                                                                                        addr822:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                     addr658:
                                                                                                                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        return;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc19_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     §§goto(addr815);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop18;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr865);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr857);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr869);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop14;
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
                                                                                                                                                §§goto(addr873);
                                                                                                                                             }
                                                                                                                                             §§goto(addr604);
                                                                                                                                          }
                                                                                                                                          §§goto(addr563);
                                                                                                                                       }
                                                                                                                                       §§goto(addr558);
                                                                                                                                    }
                                                                                                                                    §§goto(addr546);
                                                                                                                                 }
                                                                                                                                 §§goto(addr563);
                                                                                                                              }
                                                                                                                              §§goto(addr526);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr518);
                                                                                                                     }
                                                                                                                     §§push(_loc13_);
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        addr511:
                                                                                                                        §§push(§§pop() - _loc11_);
                                                                                                                     }
                                                                                                                     §§goto(addr514);
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  §§goto(addr511);
                                                                                                               }
                                                                                                               §§goto(addr514);
                                                                                                            }
                                                                                                            §§goto(addr518);
                                                                                                         }
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                      §§goto(addr444);
                                                                                                   }
                                                                                                   §§goto(addr438);
                                                                                                }
                                                                                                §§goto(addr444);
                                                                                             }
                                                                                          }
                                                                                          if(_loc18_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          _loc8_ = §§pop();
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§push(_loc3_.§,b§.x);
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 addr385:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(_loc3_.m_angularVelocity);
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              addr383:
                                                                              §§push(_loc6_);
                                                                           }
                                                                        }
                                                                        §§goto(addr385);
                                                                     }
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                }
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr132);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr101);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr90);
               }
               §§goto(addr101);
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         if(!_loc17_)
         {
            if(this.§,!9§ > 0)
            {
               if(_loc18_)
               {
                  §§goto(addr28);
               }
            }
            var _loc3_:b2Body = b2internal::0"7;
            var _loc4_:b2Body = b2internal:: `;
            _loc2_ = _loc3_.m_xf.R;
            §§push(this.m_localAnchor1.x);
            if(!_loc17_)
            {
               §§push(§§pop() - _loc3_.m_sweep.localCenter.x);
               if(!(_loc17_ && param1))
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(this.m_localAnchor1.y);
               if(_loc18_)
               {
                  §§push(§§pop() - _loc3_.m_sweep.localCenter.y);
                  if(!_loc17_)
                  {
                     addr72:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc2_.col1.x);
                  if(!(_loc17_ && _loc2_))
                  {
                     §§push(_loc5_);
                     if(!_loc17_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_ || this)
                        {
                           §§push(_loc2_.col2.x);
                           if(_loc18_ || _loc3_)
                           {
                              addr105:
                              §§push(§§pop() * _loc6_);
                           }
                           §§push(§§pop() + §§pop());
                           if(!_loc18_)
                           {
                           }
                           addr111:
                           var _loc7_:* = §§pop();
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(_loc2_.col1.y);
                              if(_loc18_ || param1)
                              {
                                 §§push(_loc5_);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(_loc2_.col2.y);
                                       if(_loc18_)
                                       {
                                          addr147:
                                          §§push(§§pop() + §§pop() * _loc6_);
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc17_)
                                             {
                                                addr158:
                                                _loc6_ = §§pop();
                                                addr176:
                                                if(!(_loc17_ && this))
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc18_ || _loc2_)
                                                   {
                                                      addr174:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                _loc2_ = _loc4_.m_xf.R;
                                                §§push(this.m_localAnchor2.x);
                                                if(!_loc17_)
                                                {
                                                   §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
                                                   if(!_loc17_)
                                                   {
                                                      addr193:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   §§push(this.m_localAnchor2.y);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                                      if(!_loc17_)
                                                      {
                                                         addr207:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      if(_loc18_)
                                                      {
                                                         §§push(_loc2_.col1);
                                                         loop0:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_);
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(_loc2_.col2);
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc17_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc9_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc17_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr244:
                                                                              if(_loc17_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc8_);
                                                                              if(!(_loc17_ && this))
                                                                              {
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr361:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 addr369:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              var _loc10_:* = §§pop();
                                                                              §§push(_loc4_.m_sweep.c.y);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       §§push(_loc3_.m_sweep.c.y);
                                                                                       if(!(_loc17_ && _loc2_))
                                                                                       {
                                                                                          addr407:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr397:
                                                                                             §§push(_loc6_);
                                                                                          }
                                                                                          var _loc11_:* = §§pop();
                                                                                          var _loc12_:Number = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(_loc12_);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               if(!(_loc17_ && this))
                                                                                                               {
                                                                                                                  addr452:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        addr468:
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        addr469:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(_loc17_ && _loc3_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr488:
                                                                                                                        var _loc13_:* = Number(§§pop());
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(b2Math);
                                                                                                                           §§push(_loc13_);
                                                                                                                           §§push(b2Settings.b2_maxLinearCorrection);
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              §§push(-§§pop());
                                                                                                                           }
                                                                                                                           §§push(§§pop().§&>§(§§pop(),§§pop(),b2Settings.b2_maxLinearCorrection));
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 addr522:
                                                                                                                                 §§push(this.§@e§);
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    addr526:
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(!(_loc17_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * _loc13_);
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr539:
                                                                                                                                       var _loc14_:* = §§pop();
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          this.§?!l§.Set(_loc10_,_loc11_);
                                                                                                                                       }
                                                                                                                                       §§push(_loc14_);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * this.§?!l§.x);
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr571:
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                          var _loc15_:* = §§pop();
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§?!l§.y);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          var _loc16_:* = §§pop();
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.m_sweep);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().c);
                                                                                                                                                loop13:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_.m_sweep);
                                                                                                                                                   loop14:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().c);
                                                                                                                                                      loop15:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         loop16:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_.§;k§);
                                                                                                                                                            loop17:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               loop18:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop19:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop20:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        loop21:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_.m_sweep);
                                                                                                                                                                           loop22:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().c);
                                                                                                                                                                              loop23:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_.m_sweep);
                                                                                                                                                                                 loop24:
                                                                                                                                                                                 while(_loc18_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().c);
                                                                                                                                                                                    loop25:
                                                                                                                                                                                    for(; !_loc17_; if(_loc17_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    },§§push(§§pop().y),if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ || _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc4_.§;k§);
                                                                                                                                                                                             if(!(_loc17_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr819:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr821);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr893);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr883);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr819);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr864);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr908);
                                                                                                                                                                                    },§§goto(addr831))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       loop26:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_.§;k§);
                                                                                                                                                                                          loop27:
                                                                                                                                                                                          while(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                             loop28:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                addr975:
                                                                                                                                                                                                addr883:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   addr976:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                                                                      addr977:
                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc3_.m_sweep);
                                                                                                                                                                                                         continue loop22;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                loop51:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                         addr893:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc18_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc17_ && _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            while(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                  addr755:
                                                                                                                                                                                                                  loop56:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                     if(!(_loc18_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr763:
                                                                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                     if(_loc17_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(_loc18_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().c);
                                                                                                                                                                                                                           §§goto(addr763);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                        addr855:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr772:
                                                                                                                                                                                                                     §§push(§§pop().c);
                                                                                                                                                                                                                     if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop25;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        addr864:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc17_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc4_.§;k§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                 addr821:
                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                 if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr831:
                                                                                                                                                                                                                                    §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr975);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr976);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop16;
                                                                                                                                                                                                                        §§goto(addr772);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(!(_loc17_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop13;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr855);
                                                                                                                                                                                                                     §§push(_loc4_.m_sweep);
                                                                                                                                                                                                                     §§goto(addr755);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr836);
                                                                                                                                                                                                               §§push(_loc4_.m_sweep);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr977);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop15;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop14;
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
                                                                                                                                          §§goto(addr911);
                                                                                                                                       }
                                                                                                                                       §§goto(addr571);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr539);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr526);
                                                                                                                           }
                                                                                                                           §§goto(addr539);
                                                                                                                        }
                                                                                                                        §§goto(addr522);
                                                                                                                        addr487:
                                                                                                                     }
                                                                                                                     §§push(this.§ [§);
                                                                                                                  }
                                                                                                                  §§goto(addr488);
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc18_ || _loc2_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr488);
                                                                                                            }
                                                                                                            §§goto(addr487);
                                                                                                         }
                                                                                                         §§goto(addr469);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr469);
                                                                                                }
                                                                                                §§goto(addr452);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr468);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              §§goto(addr397);
                                                                           }
                                                                           addr279:
                                                                           §§push(_loc9_);
                                                                           if(_loc17_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc18_)
                                                                           {
                                                                              addr290:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr360:
                                                                                                      addr360:
                                                                                                      §§push(_loc4_.m_sweep.c.x);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            break loop3;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr361);
                                                                                                      §§push(_loc5_);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr369);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                       addr327:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 §§push(_loc3_.m_sweep.c.x);
                                                                                 if(!(_loc17_ && _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr360);
                                                                           }
                                                                           §§goto(addr361);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           §§goto(addr360);
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§goto(addr341);
                                                                     }
                                                                     §§goto(addr360);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          _loc5_ = §§pop();
                                          §§goto(addr176);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr147);
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr111);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr111);
               }
               §§goto(addr72);
            }
            §§goto(addr58);
         }
         addr28:
         return true;
      }
   }
}
