package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §%!A§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2PulleyJoint))
         {
            §%!A§ = 2;
         }
      }
      
      private var §8"@§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var § o§:Number;
      
      private var §4"E§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §%m§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §2!_§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §%W§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           while(true)
                           {
                              super(param1);
                              loop6:
                              for(; !_loc5_; while(!(_loc5_ && _loc3_))
                              {
                                 if(_loc5_)
                                 {
                                    continue loop2;
                                 }
                                 this.m_localAnchor1.SetV(param1.§-!,§);
                                 §§goto(addr241);
                                 §§goto(addr167);
                              })
                              {
                                 this.§8"@§ = b2internal::3"X.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§#d§);
                                       addr383:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr384:
                                          while(true)
                                          {
                                             §§push(this.§8"@§);
                                             addr386:
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr387:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr388:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr389:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr390:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr131:
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.§2!_§ = 0;
                                       loop34:
                                       while(_loc6_)
                                       {
                                          this.m_limitImpulse1 = 0;
                                          while(true)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop34;
                                             }
                                             if(!_loc5_)
                                             {
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr303:
                                             loop26:
                                             while(true)
                                             {
                                                §§push(this.m_groundAnchor2);
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(param1.§8f§);
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§pop().y);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(this.§8"@§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop().m_xf);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop().position);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(§§pop().y);
                                                               if(_loc6_)
                                                               {
                                                                  addr280:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        continue loop6;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§8"@§);
                                                                        addr308:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().m_xf);
                                                                           addr309:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              addr310:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr311:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr306:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop26;
                                                                  }
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr305:
                                                }
                                                §§goto(addr306);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr305);
                                                §§goto(addr313);
                                             }
                                             addr313:
                                          }
                                          §§goto(addr391);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             if(_loc5_)
                                             {
                                                while(_loc6_ || this)
                                                {
                                                   §§push(this);
                                                   §§push(param1.§'!<§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§4"E§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * param1.§"[§);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§pop().§ o§ = §§pop();
                                                }
                                                while(!(_loc5_ && _loc2_))
                                                {
                                                   this.§4"E§ = param1.§#9§;
                                                   §§goto(addr203);
                                                }
                                                addr203:
                                                while(!_loc5_)
                                                {
                                                   this.m_localAnchor2.SetV(param1.§["9§);
                                                   §§goto(addr227);
                                                }
                                                addr227:
                                                continue loop4;
                                                addr241:
                                             }
                                             §§goto(addr131);
                                             §§goto(addr197);
                                          }
                                          §§goto(addr167);
                                       }
                                       addr122:
                                    }
                                 }
                              }
                              continue loop3;
                              while(_loc6_ || _loc2_)
                              {
                                 §§goto(addr303);
                                 §§push(this.m_groundAnchor2);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     return;
                     addr58:
                  }
               }
               if(_loc5_ && param1)
               {
                  continue;
               }
               §§push(this);
               §§push(b2Math);
               §§push(param1.§-6§);
               §§push(this.§ o§);
               if(_loc6_ || this)
               {
                  §§push(b2internal::%!A);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!(_loc5_ && _loc2_))
                     {
                        addr119:
                        §§push(§§pop() / this.§4"E§);
                     }
                     §§pop().m_maxLength2 = §§pop().§@U§(§§pop(),§§pop());
                     §§goto(addr122);
                  }
               }
               §§goto(addr119);
            }
         }
         §§goto(addr58);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§2!_§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(!(_loc3_ && this))
                  {
                     addr63:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(this.§2!_§);
                        if(_loc2_)
                        {
                           §§goto(addr77);
                        }
                        addr77:
                        §§push(§§pop() * §§pop());
                        if(_loc2_)
                        {
                           addr73:
                           §§push(this.m_u2.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr73);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr77);
         }
         §§goto(addr63);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §8!i§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§8"@§.m_xf.position.Copy();
         if(_loc3_ || _loc1_)
         {
            _loc1_.§6"3§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §?0§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§8"@§.m_xf.position.Copy();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§6"3§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§8"@§.m_xf.position.x);
         if(!(_loc7_ && _loc1_))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc7_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§8"@§.m_xf.position.y);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(_loc6_ || _loc2_)
               {
                  addr75:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(_loc6_ || this)
               {
                  §§push(§§pop() - _loc2_);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!(_loc7_ && _loc3_))
                  {
                     addr125:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr125);
            }
            §§goto(addr75);
         }
         §§goto(addr40);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::5!.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§8"@§.m_xf.position.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc6_ || _loc2_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§8"@§.m_xf.position.y);
            if(_loc6_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() - _loc2_);
               if(!_loc7_)
               {
                  addr90:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!_loc7_)
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr90);
         }
         §§goto(addr40);
      }
      
      public function §'!;§() : Number
      {
         return this.§4"E§;
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
