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
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §^!i§:b2Vec2;
      
      private var §?!5§:b2Vec2;
      
      private var §,8§:Number;
      
      private var §+!P§:b2Vec3;
      
      private var §#K§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^!i§ = new b2Vec2();
            while(true)
            {
               this.§?!5§ = new b2Vec2();
               loop1:
               while(!(_loc3_ && _loc3_))
               {
                  this.§+!P§ = new b2Vec3();
                  loop2:
                  while(true)
                  {
                     this.§#K§ = new b2Mat33();
                     while(true)
                     {
                        super(param1);
                        continue loop2;
                        addr57:
                        if(!_loc3_)
                        {
                           this.§+!P§.§%&§();
                           loop8:
                           while(!_loc3_)
                           {
                              this.§#K§ = new b2Mat33();
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr35:
                                 if(_loc3_ && this)
                                 {
                                    while(true)
                                    {
                                       this.§?!5§.SetV(param1.§^G§);
                                       addr76:
                                       while(_loc2_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§,8§ = param1.§1!@§;
                                             break loop8;
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                       §§goto(addr35);
                                    }
                                    addr92:
                                 }
                                 return;
                              }
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr57);
                              }
                              §§goto(addr76);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.§^!i§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.§?!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_)
         {
            §§push(this.§+!P§.x);
            if(!(_loc3_ && param1))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            return §§pop() * this.§+!P§.z;
         }
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
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         var _loc6_:b2Vec2 = _loc4_.§9!§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc22_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§9!§;
         §§push(_loc5_.m_angularVelocity);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§1!X§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§1!X§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§^!B§);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§^!B§);
         if(!(_loc22_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§^!i§.x);
         if(_loc23_ || param1)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc22_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§^!i§.y);
         if(_loc23_ || _loc2_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc23_)
            {
               addr133:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(_loc23_ || param1)
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
                     if(!(_loc22_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr239:
                           while(true)
                           {
                              §§push(§§pop().x);
                           }
                           loop11:
                           while(_loc23_ || this)
                           {
                              _loc15_ = §§pop();
                              loop12:
                              while(_loc23_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc22_ && this))
                                    {
                                       if(!_loc22_)
                                       {
                                          if(_loc23_ || param1)
                                          {
                                             addr162:
                                             §§push(Number(§§pop()));
                                             if(_loc22_)
                                             {
                                                continue loop11;
                                             }
                                             _loc14_ = §§pop();
                                             if(_loc22_)
                                             {
                                                continue loop12;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.col1);
                                                if(!_loc23_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop().y);
                                                if(_loc23_ || _loc3_)
                                                {
                                                   §§push(_loc14_);
                                                   if(!(_loc22_ && this))
                                                   {
                                                      if(_loc23_)
                                                      {
                                                         if(_loc23_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc23_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc22_)
                                                            {
                                                               if(_loc22_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(_loc2_.col2);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop().y);
                                                                  if(_loc23_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc23_)
                                                                     {
                                                                        addr212:
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr213:
                                                                     }
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr239);
                                                               }
                                                               addr241:
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               break loop12;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr241);
                                                         }
                                                         addr240:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr212);
                                                }
                                                §§goto(addr213);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr244);
                                          }
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr162);
                                 }
                                 _loc2_ = _loc5_.m_xf.R;
                                 §§push(this.§?!5§.x);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                    if(_loc23_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc16_:* = §§pop();
                                 §§push(this.§?!5§.y);
                                 if(!_loc22_)
                                 {
                                    §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                    if(!(_loc22_ && _loc3_))
                                    {
                                       addr282:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc17_:* = §§pop();
                                    if(!_loc22_)
                                    {
                                       §§push(_loc2_.col1);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc22_)
                                          {
                                             §§push(_loc16_);
                                             if(_loc23_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc22_ && param1))
                                                {
                                                   §§push(_loc2_.col2);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr405:
                                                      addr341:
                                                      while(true)
                                                      {
                                                         §§push(_loc17_);
                                                         addr406:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr407:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr408:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr409:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr410:
                                                                     while(true)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§push(_loc2_.col2);
                                                      if(!(_loc23_ || param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop().y);
                                                      if(!(_loc22_ && this))
                                                      {
                                                         if(!(_loc22_ && param1))
                                                         {
                                                            §§push(_loc17_);
                                                            if(!(_loc22_ && param1))
                                                            {
                                                               if(_loc23_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc23_)
                                                                  {
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop46:
                                                                           while(true)
                                                                           {
                                                                              _loc17_ = §§pop();
                                                                              addr385:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc23_ || _loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       addr454:
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          addr458:
                                                                                          §§push(§§pop() * _loc15_);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr454:
                                                                                    }
                                                                                    continue loop46;
                                                                                    if(_loc23_)
                                                                                    {
                                                                                       addr462:
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop15;
                                                                                    }
                                                                                    break loop15;
                                                                                 }
                                                                                 addr415:
                                                                                 §§push(_loc9_);
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    §§push(_loc17_);
                                                                                    if(_loc23_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          addr429:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             §§push(_loc6_.x);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                addr446:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(_loc23_ || _loc2_)
                                                                                                {
                                                                                                   §§goto(addr454);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       §§goto(addr454);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 §§goto(addr446);
                                                                                 §§goto(addr462);
                                                                              }
                                                                           }
                                                                           addr384:
                                                                        }
                                                                        §§goto(addr415);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr405);
                                                                     }
                                                                  }
                                                                  §§goto(addr446);
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                            §§goto(addr458);
                                                         }
                                                         §§goto(addr407);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr429);
                                             }
                                             §§goto(addr462);
                                          }
                                          break;
                                       }
                                       var _loc18_:* = §§pop();
                                       §§push(_loc8_.y);
                                       if(_loc23_ || _loc3_)
                                       {
                                          §§push(_loc9_);
                                          if(_loc23_ || this)
                                          {
                                             §§push(_loc16_);
                                             if(!(_loc22_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc23_ || param1)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc23_)
                                                   {
                                                      §§push(_loc6_.y);
                                                      if(!(_loc22_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc22_)
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc22_)
                                                            {
                                                               addr517:
                                                               §§push(§§pop() - §§pop() * _loc14_);
                                                               if(!(_loc22_ && _loc2_))
                                                               {
                                                                  addr525:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr517);
                                                         }
                                                         var _loc19_:* = §§pop();
                                                         §§push(_loc9_);
                                                         if(!_loc22_)
                                                         {
                                                            §§push(§§pop() - _loc7_);
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         var _loc20_:* = §§pop();
                                                         var _loc21_:b2Vec3 = new b2Vec3();
                                                         if(!_loc22_)
                                                         {
                                                            §§push(this.§#K§);
                                                            §§push(_loc21_);
                                                            §§push(_loc18_);
                                                            if(_loc23_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§push(_loc19_);
                                                            if(_loc23_ || param1)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§push(_loc20_);
                                                            if(_loc23_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§pop().Solve33(§§pop(),§§pop(),§§pop(),§§pop());
                                                            loop22:
                                                            while(true)
                                                            {
                                                               this.§+!P§.§[!C§(_loc21_);
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  §§push(_loc6_.x);
                                                                  if(!(_loc22_ && _loc3_))
                                                                  {
                                                                     §§push(_loc10_);
                                                                     if(_loc23_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * _loc21_.x);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§pop().x = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     §§push(_loc6_.y);
                                                                     if(_loc23_)
                                                                     {
                                                                        §§push(_loc10_);
                                                                        if(_loc23_)
                                                                        {
                                                                           §§push(§§pop() * _loc21_.y);
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     §§pop().y = §§pop();
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc21_.y);
                                                                                 if(!(_loc22_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc22_ && this))
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc21_.x);
                                                                                          addr802:
                                                                                          addr641:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr803:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                addr804:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc21_.z);
                                                                                                   addr806:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr641:
                                                                                          if(!(_loc23_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc23_ || param1)
                                                                                          {
                                                                                             if(!(_loc22_ && this))
                                                                                             {
                                                                                                addr665:
                                                                                                §§push(_loc21_.z);
                                                                                                if(!(_loc22_ && _loc3_))
                                                                                                {
                                                                                                   addr673:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc23_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc23_ || param1))
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      addr688:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         addr708:
                                                                                                         if(!_loc22_)
                                                                                                         {
                                                                                                            _loc9_ = §§pop();
                                                                                                            loop40:
                                                                                                            while(!(_loc22_ && param1))
                                                                                                            {
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_.m_angularVelocity = _loc7_;
                                                                                                                  addr570:
                                                                                                                  while(_loc23_ || this)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                     _loc5_.m_angularVelocity = _loc9_;
                                                                                                                     if(!(_loc22_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           break loop42;
                                                                                                                        }
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc23_ || this))
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               §§push(_loc9_);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  if(!(_loc22_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc23_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!(_loc22_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc21_.y);
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(_loc23_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc22_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr626:
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       addr629:
                                                                                                                                       §§push(_loc21_.x);
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc22_ && param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr641);
                                                                                                                                          }
                                                                                                                                          §§goto(addr665);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr802);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr641);
                                                                                                                                 }
                                                                                                                                 §§goto(addr673);
                                                                                                                              }
                                                                                                                              §§goto(addr806);
                                                                                                                           }
                                                                                                                           §§goto(addr629);
                                                                                                                        }
                                                                                                                        §§goto(addr626);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        addr809:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr810:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr808:
                                                                                                                  }
                                                                                                                  §§goto(addr688);
                                                                                                               }
                                                                                                               §§goto(addr708);
                                                                                                               §§goto(addr711);
                                                                                                            }
                                                                                                            addr711:
                                                                                                            §§goto(addr803);
                                                                                                            addr738:
                                                                                                         }
                                                                                                         §§goto(addr810);
                                                                                                      }
                                                                                                      if(!(_loc22_ && _loc2_))
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      §§goto(addr809);
                                                                                                   }
                                                                                                   §§goto(addr804);
                                                                                                }
                                                                                                §§goto(addr803);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr808);
                                                                                             }
                                                                                             addr807:
                                                                                          }
                                                                                          §§goto(addr673);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr807);
                                                                                 }
                                                                                 §§goto(addr806);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr718);
                                                      }
                                                      §§goto(addr517);
                                                   }
                                                   §§goto(addr525);
                                                }
                                             }
                                          }
                                          §§goto(addr517);
                                       }
                                       §§goto(addr525);
                                    }
                                    §§goto(addr410);
                                 }
                                 §§goto(addr282);
                              }
                              while(true)
                              {
                                 §§goto(addr169);
                              }
                           }
                        }
                     }
                     §§goto(addr240);
                  }
               }
            }
            §§goto(addr224);
         }
         §§goto(addr133);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§^!i§.x);
         if(_loc21_ || param1)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc21_)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(this.§^!i§.y);
            if(!(_loc22_ && _loc3_))
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!_loc22_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc7_:* = §§pop();
            if(!(_loc22_ && this))
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc6_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop5:
                              while(true)
                              {
                                 §§push(_loc7_);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc2_.col1);
                                                   if(!_loc21_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§§pop().y);
                                                   if(!_loc22_)
                                                   {
                                                      if(_loc22_ && param1)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§push(_loc6_);
                                                      if(!(_loc22_ && _loc2_))
                                                      {
                                                         if(!(_loc21_ || param1))
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc22_ && this))
                                                         {
                                                            §§push(_loc2_.col2);
                                                            if(!_loc21_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§push(§§pop().y);
                                                            if(_loc21_ || _loc3_)
                                                            {
                                                               addr163:
                                                               if(_loc22_)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§push(_loc7_);
                                                               if(!(_loc21_ || param1))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            if(_loc22_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr182:
                                                            §§push(§§pop() + §§pop());
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            addr182:
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop13:
                                                            while(_loc21_ || _loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc21_)
                                                                  {
                                                                     if(!_loc21_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!(_loc22_ && _loc3_))
                                                                     {
                                                                        if(!(_loc21_ || this))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(!_loc21_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr182);
                                                                     }
                                                                  }
                                                                  if(_loc21_ || _loc2_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(_loc21_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               _loc2_ = _loc5_.m_xf.R;
                                                               §§push(this.§?!5§.x);
                                                               if(!_loc22_)
                                                               {
                                                                  §§push(§§pop() - _loc5_.m_sweep.localCenter.x);
                                                                  if(!(_loc22_ && param1))
                                                                  {
                                                                     addr228:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc8_:* = §§pop();
                                                                  §§push(this.§?!5§.y);
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(§§pop() - _loc5_.m_sweep.localCenter.y);
                                                                     if(_loc21_ || _loc2_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                  }
                                                                  var _loc9_:* = §§pop();
                                                                  if(!_loc22_)
                                                                  {
                                                                     §§push(_loc2_.col1);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc22_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr378:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.col2);
                                                                                 addr380:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr381:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_);
                                                                                       addr382:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr383:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr377:
                                                                        }
                                                                        addr384:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           addr385:
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              addr386:
                                                                              while(true)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                continue loop7;
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
            §§goto(addr191);
         }
         §§goto(addr49);
      }
   }
}
