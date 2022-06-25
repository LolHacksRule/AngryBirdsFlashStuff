package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §7!'§:b2Vec2;
      
      private var §+2§:b2Vec2;
      
      public var §4""§:b2Mat22;
      
      public var §3!i§:Number;
      
      private var §[?§:b2Vec2;
      
      private var §?!L§:Number;
      
      private var §>!z§:Number;
      
      private var §5!U§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7!'§ = new b2Vec2();
            while(true)
            {
               this.§+2§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§4""§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§[?§ = new b2Vec2();
                     while(true)
                     {
                        super(param1);
                        loop4:
                        for(; !(_loc3_ && _loc3_); while(_loc2_ || this)
                        {
                           while(true)
                           {
                              this.§3!i§ = 0;
                              continue loop2;
                           }
                           §§goto(addr50);
                        })
                        {
                           this.§7!'§.SetV(param1.§'G§);
                           loop5:
                           while(true)
                           {
                              this.§+2§.SetV(param1.§true§);
                              loop6:
                              while(true)
                              {
                                 this.§4""§.§+J§();
                                 continue loop4;
                                 addr91:
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 this.§?!L§ = 0;
                                 loop11:
                                 while(true)
                                 {
                                    this.§>!z§ = param1.§6""§;
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr50:
                                             if(_loc3_ && _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          addr74:
                                          addr74:
                                          while(true)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr91);
                                          }
                                          continue loop6;
                                       }
                                       continue loop11;
                                       addr64:
                                       this.§5!U§ = param1.maxTorque;
                                       if(_loc2_ || param1)
                                       {
                                          return;
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
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§[?§.§+J§();
               §§goto(addr74);
            }
         }
         §§goto(addr131);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.§7!'§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.§+2§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§[?§.x);
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr49);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr49:
            §§push(§§pop() * this.§[?§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            return §§pop() * this.§?!L§;
         }
      }
      
      public function §1!1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§>!z§ = param1;
         }
      }
      
      public function §=!3§() : Number
      {
         return this.§>!z§;
      }
      
      public function §8J§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!U§ = param1;
         }
      }
      
      public function §7!7§() : Number
      {
         return this.§5!U§;
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
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::&A;
         var _loc5_:b2Body = b2internal::4!d;
         var _loc6_:b2Vec2 = _loc4_.§%!<§;
         §§push(_loc4_.m_angularVelocity);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%!<§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§3!q§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§3!q§);
         if(_loc27_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§2!1§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§2!1§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§7!'§.x);
         if(!_loc26_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc26_ && this))
            {
               addr101:
               §§push(Number(§§pop()));
            }
            var _loc14_:* = §§pop();
            §§push(this.§7!'§.y);
            if(_loc27_)
            {
               §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
               if(!(_loc26_ && _loc2_))
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
                  if(!(_loc26_ && this))
                  {
                     §§push(_loc14_);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr224:
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr226:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr227:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr228:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr229:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr230:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr223:
                  }
                  addr231:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr232:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr151);
         }
         §§goto(addr101);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
