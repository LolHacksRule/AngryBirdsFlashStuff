package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Mat33;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §8>§.b2Vec3;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §^H§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2RevoluteJoint))
         {
            §^H§ = new b2Vec2();
         }
      }
      
      private var §@"§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §?![§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §+!P§:b2Vec3;
      
      private var §#!s§:Number;
      
      private var §#K§:b2Mat33;
      
      private var §>y§:Number;
      
      private var §@&§:Boolean;
      
      private var §1!K§:Number;
      
      private var §@!]§:Number;
      
      private var §]!x§:Boolean;
      
      private var §,8§:Number;
      
      private var §@s§:Number;
      
      private var §8E§:Number;
      
      private var §-!6§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@"§ = new b2Mat22();
            while(true)
            {
               this.K1 = new b2Mat22();
            }
            addr300:
         }
         loop1:
         while(true)
         {
            this.K2 = new b2Mat22();
            loop2:
            while(true)
            {
               this.K3 = new b2Mat22();
               loop3:
               while(!_loc2_)
               {
                  this.impulse3 = new b2Vec3();
                  loop4:
                  while(true)
                  {
                     this.impulse2 = new b2Vec2();
                     while(true)
                     {
                        this.§?![§ = new b2Vec2();
                        continue loop1;
                        loop21:
                        while(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              this.§@&§ = param1.§;!J§;
                              do
                              {
                                 this.§-!6§ = b2internal::7! ;
                              }
                              while(!(_loc3_ || param1));
                              
                              if(_loc2_ && param1)
                              {
                                 continue;
                              }
                              addr42:
                              if(_loc3_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    loop11:
                                    while(_loc3_ || _loc2_)
                                    {
                                       this.m_localAnchor1.SetV(param1.§9!9§);
                                       while(true)
                                       {
                                          this.m_localAnchor2.SetV(param1.§^G§);
                                          while(true)
                                          {
                                             this.§,8§ = param1.§1!@§;
                                             loop14:
                                             while(true)
                                             {
                                                this.§+!P§.§%&§();
                                                addr161:
                                                addr240:
                                                while(!(_loc2_ && this))
                                                {
                                                   this.§#!s§ = 0;
                                                   loop16:
                                                   while(!_loc2_)
                                                   {
                                                      this.§@s§ = param1.§8!7§;
                                                      while(true)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            this.§8E§ = param1.§'!w§;
                                                            continue;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop3;
                                                   while(_loc3_ || param1)
                                                   {
                                                      this.§]!x§ = param1.§"!8§;
                                                      continue loop21;
                                                      §§goto(addr42);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.m_localAnchor2 = new b2Vec2();
                                                   addr227:
                                                   while(!(_loc2_ && this))
                                                   {
                                                      this.§+!P§ = new b2Vec3();
                                                      break loop11;
                                                   }
                                                   continue loop1;
                                                   §§goto(addr161);
                                                }
                                             }
                                          }
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc2_)
                                          {
                                             this.§@!]§ = param1.motorSpeed;
                                             §§goto(addr80);
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr227);
                                       §§goto(addr193);
                                    }
                                    addr193:
                                    continue loop2;
                                 }
                                 §§goto(addr93);
                              }
                              §§goto(addr80);
                              continue;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
               §§goto(addr300);
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§+!P§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * this.§+!P§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§+!P§.z;
         }
      }
      
      public function §;w§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(b2internal::7!<.m_sweep.a - b2internal::^^.m_sweep.a);
         if(_loc1_)
         {
            return §§pop() - this.§,8§;
         }
      }
      
      public function §;$§() : Number
      {
         return b2internal::7!<.m_angularVelocity - b2internal::^^.m_angularVelocity;
      }
      
      public function §9N§() : Boolean
      {
         return this.§]!x§;
      }
      
      public function §8<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!x§ = param1;
         }
      }
      
      public function §3!'§() : Number
      {
         return this.§@s§;
      }
      
      public function §=!9§() : Number
      {
         return this.§8E§;
      }
      
      public function §=C§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§@s§ = param1;
            do
            {
               this.§8E§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function §-!"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            b2internal::^^.SetAwake(true);
            do
            {
               b2internal::7!<.SetAwake(true);
            }
            while(_loc1_);
            
         }
         return this.§@&§;
      }
      
      public function §?!3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@&§ = param1;
         }
      }
      
      public function §<! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            b2internal::^^.SetAwake(true);
         }
         while(true)
         {
            b2internal::7!<.SetAwake(true);
            while(_loc2_ || _loc3_)
            {
               this.§@!]§ = param1;
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §%!4§() : Number
      {
         return this.§@!]§;
      }
      
      public function §0!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!K§ = param1;
         }
      }
      
      public function §[c§() : Number
      {
         return this.§1!K§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::^^;
         var _loc3_:b2Body = b2internal::7!<;
         var _loc11_:b2Vec2 = _loc2_.§9!§;
         §§push(_loc2_.m_angularVelocity);
         if(_loc28_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         var _loc13_:b2Vec2 = _loc3_.§9!§;
         §§push(_loc3_.m_angularVelocity);
         if(_loc28_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc14_:* = §§pop();
         §§push(_loc2_.§1!X§);
         if(!_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(_loc3_.§1!X§);
         if(!_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(_loc2_.§^!B§);
         if(_loc28_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc17_:* = §§pop();
         §§push(_loc3_.§^!B§);
         if(_loc28_)
         {
            §§push(Number(§§pop()));
         }
         var _loc18_:* = §§pop();
         if(!_loc29_)
         {
            §§push(this.§@&§);
            if(_loc28_)
            {
               §§push(Boolean(§§pop()));
               if(_loc28_ || _loc3_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop39:
                        while(true)
                        {
                           §§pop();
                           loop40:
                           while(true)
                           {
                              §§push(this.§-!6§);
                              if(!(_loc29_ && _loc3_))
                              {
                                 §§push(§§pop() == b2internal::!>);
                                 loop41:
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr417:
                                    addr419:
                                    while(!_loc28_)
                                    {
                                       continue loop39;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc14_);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(this.§@!]§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop8:
                                                            while(true)
                                                            {
                                                               _loc19_ = §§pop();
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>y§);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc19_);
                                                                     loop11:
                                                                     while(_loc28_ || param1)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 _loc20_ = §§pop();
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#!s§);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc21_ = §§pop();
                                                                                          loop18:
                                                                                          while(_loc28_)
                                                                                          {
                                                                                             §§push(param1.§6c§);
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§1!K§);
                                                                                                addr360:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr361:
                                                                                                   while(_loc28_ || param1)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                                addr244:
                                                                                                if(_loc29_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc29_ && this)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                if(!(_loc28_ || _loc2_))
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                §§push(_loc17_);
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc28_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc28_ || param1))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§push(_loc20_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      addr283:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         loop25:
                                                                                                         while(!(_loc29_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop26:
                                                                                                            for(; !(_loc29_ && this); if(!(_loc28_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            },_loc14_ = §§pop(),§§goto(addr216))
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               _loc20_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  addr237:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc29_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     §§goto(addr244);
                                                                                                                  }
                                                                                                                  addr223:
                                                                                                                  continue loop19;
                                                                                                                  if(!(_loc29_ && this))
                                                                                                                  {
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§]!x§);
                                                                                                                           if(!(_loc29_ && this))
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 addr130:
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc29_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          continue loop41;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc28_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc29_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   if(!_loc29_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                         if(!(_loc28_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr283);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr361);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr199:
                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            continue loop26;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr237);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr293:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr199);
                                                                                                                                                         }
                                                                                                                                                         addr292:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr157:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr448:
                                                                                                                                                §§push(this.§-!6§ == b2internal::7! );
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   addr453:
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr454:
                                                                                                                                                      §§push(_loc2_.m_xf);
                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().R);
                                                                                                                                                         if(!_loc29_)
                                                                                                                                                         {
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            if(!(_loc29_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_localAnchor1);
                                                                                                                                                               loop42:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr696:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_.m_sweep);
                                                                                                                                                                     addr698:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().localCenter);
                                                                                                                                                                        addr699:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr700:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              addr701:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr702:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr515);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr2063:
                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                            if(!(_loc29_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.m_localAnchor1);
                                                                                                                                                               loop230:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr2273:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_.m_sweep);
                                                                                                                                                                     addr2275:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().localCenter);
                                                                                                                                                                        addr2276:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr2277:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                              addr2278:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr2279:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    continue loop230;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr2269);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr2062:
                                                                                                                                                         §§push(§§pop().R);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr2063);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_.m_xf);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr2062);
                                                                                                                                                }
                                                                                                                                                §§goto(addr453);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc28_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr223);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr216:
                                                                                                                                          }
                                                                                                                                          while(_loc28_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr157);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       §§goto(addr454);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr453);
                                                                                                                           }
                                                                                                                           §§goto(addr130);
                                                                                                                        }
                                                                                                                        §§goto(addr417);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        §§push(this);
                                                                                                                        §§push(b2Math);
                                                                                                                        §§push(this.§#!s§);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           §§push(_loc20_);
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              addr343:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              §§push(_loc22_);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§pop().§#!s§ = §§pop().§5L§(§§pop(),§§pop(),_loc22_);
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(this.§#!s§);
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    addr302:
                                                                                                                                    if(_loc29_ && this)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc21_);
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                           }
                                                                                                                           §§goto(addr454);
                                                                                                                        }
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                     addr377:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop4;
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
                                       §§goto(addr117);
                                    }
                                 }
                              }
                              §§goto(addr448);
                           }
                        }
                        addr444:
                     }
                     §§goto(addr419);
                  }
               }
               §§goto(addr444);
            }
            §§goto(addr453);
         }
         §§goto(addr296);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
