package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §&!K§:b2Vec2;
      
      private var §%K§:b2Vec2;
      
      public var §>§:b2Mat22;
      
      public var §>!§:Number;
      
      private var §%Z§:b2Vec2;
      
      private var §+"3§:Number;
      
      private var §"!C§:Number;
      
      private var §?<§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!K§ = new b2Vec2();
            while(true)
            {
               this.§%K§ = new b2Vec2();
               addr165:
               while(true)
               {
                  this.§>§ = new b2Mat22();
                  addr149:
                  while(true)
                  {
                     this.§%Z§ = new b2Vec2();
                     addr143:
                     while(true)
                     {
                        super(param1);
                     }
                  }
               }
            }
            addr170:
         }
         while(true)
         {
            this.§&!K§.SetV(param1.§!8§);
            loop5:
            while(true)
            {
               this.§%K§.SetV(param1.§@W§);
               loop6:
               while(true)
               {
                  this.§>§.§@!d§();
                  while(true)
                  {
                     this.§>!§ = 0;
                     continue loop6;
                     addr73:
                     while(_loc2_ || this)
                     {
                        continue loop5;
                        addr43:
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        if(_loc3_ && _loc3_)
                        {
                           continue loop6;
                        }
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              this.§?<§ = param1.maxTorque;
                              addr61:
                              if(_loc3_)
                              {
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§goto(addr43);
                                    }
                                    else
                                    {
                                       while(!_loc3_)
                                       {
                                          this.§"!C§ = param1.§1^§;
                                          continue loop11;
                                       }
                                       §§goto(addr143);
                                       addr66:
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              return;
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr149);
                     }
                  }
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.§&!K§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.§%K§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§%Z§.x);
            if(!_loc2_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() * this.§%Z§.y);
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
            return §§pop() * this.§+"3§;
         }
      }
      
      public function §]!E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!C§ = param1;
         }
      }
      
      public function §#J§() : Number
      {
         return this.§"!C§;
      }
      
      public function §,!W§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§?<§ = param1;
         }
      }
      
      public function § ![§() : Number
      {
         return this.§?<§;
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
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::<!1;
         var _loc5_:b2Body = b2internal::?H;
         var _loc6_:b2Vec2 = _loc4_.§?o§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§?o§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc26_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§6!W§);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§6!W§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§<!%§);
         if(!(_loc27_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§<!%§);
         if(_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§&!K§.x);
         if(!(_loc27_ && this))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc27_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§&!K§.y);
         if(_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!(_loc27_ && param1))
            {
               addr139:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(_loc26_)
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
                        if(_loc26_ || param1)
                        {
                           §§push(_loc2_.col2);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr256:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr257:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr258:
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
                                 if(!(_loc26_ || this))
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop().y);
                                 if(_loc26_)
                                 {
                                    if(_loc26_ || _loc2_)
                                    {
                                       if(_loc26_ || param1)
                                       {
                                          §§push(_loc15_);
                                          if(_loc26_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc26_)
                                                {
                                                   if(_loc26_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop14:
                                                      for(; !_loc27_; if(_loc27_ && _loc2_)
                                                      {
                                                         continue;
                                                      },if(_loc27_)
                                                      {
                                                         continue loop12;
                                                      },§§goto(addr158),§§push(Number(§§pop())))
                                                      {
                                                         _loc15_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(!(_loc27_ && _loc3_))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc27_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               addr158:
                                                               addr158:
                                                               if(_loc26_ || _loc3_)
                                                               {
                                                                  if(_loc27_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc14_);
                                                                  if(!_loc27_)
                                                                  {
                                                                     if(!_loc26_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     continue loop12;
                                                                  }
                                                                  continue loop13;
                                                                  §§goto(addr158);
                                                               }
                                                               §§goto(addr256);
                                                               addr183:
                                                            }
                                                            addr261:
                                                            while(true)
                                                            {
                                                               addr177:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.col1);
                                                                  if(!_loc26_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr183);
                                                                  §§push(§§pop().y);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            break loop13;
                                                         }
                                                      }
                                                      continue loop1;
                                                      addr230:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr230);
                                             }
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                §§goto(addr261);
                                             }
                                             addr224:
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr224);
                              }
                              §§goto(addr257);
                           }
                        }
                        §§goto(addr259);
                     }
                  }
               }
            }
            §§goto(addr175);
         }
         §§goto(addr139);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
