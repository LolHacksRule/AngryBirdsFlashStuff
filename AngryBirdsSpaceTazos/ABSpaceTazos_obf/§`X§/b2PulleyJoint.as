package §`X§
{
   import §'!&§.b2Body;
   import §'!&§.b2TimeStep;
   import §9t§.b2Mat22;
   import §9t§.b2Math;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §5"2§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5"2§ = 2;
         }
      }
      
      private var §0"+§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §,!L§:Number;
      
      private var §;"%§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §!"-§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §0"3§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §#"=§:int;
      
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
            }
            addr440:
         }
         loop1:
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
                  for(; !_loc5_; if(_loc5_ && this)
                  {
                     continue;
                  },§§goto(addr68))
                  {
                     this.m_u2 = new b2Vec2();
                     loop5:
                     while(true)
                     {
                        super(param1);
                        while(true)
                        {
                           this.§0"+§ = b2internal::<!1.m_world.m_groundBody;
                           while(true)
                           {
                              §§push(this.m_groundAnchor1);
                              loop8:
                              while(true)
                              {
                                 §§push(param1.§]"9§);
                                 addr373:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr374:
                                    while(true)
                                    {
                                       §§push(this.§0"+§);
                                       addr376:
                                       while(true)
                                       {
                                          §§push(§§pop().m_xf);
                                          addr377:
                                          while(true)
                                          {
                                             §§push(§§pop().position);
                                             addr378:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr379:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr380:
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
                              loop27:
                              for(; !(_loc5_ && _loc3_); if(!(_loc6_ || _loc2_))
                              {
                                 continue;
                              },if(!_loc5_)
                              {
                                 this.m_limitImpulse1 = 0;
                                 §§goto(addr52);
                              },§§goto(addr381))
                              {
                                 if(!_loc5_)
                                 {
                                    this.m_localAnchor1.SetV(param1.§!8§);
                                    loop28:
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr301);
                                       addr184:
                                       loop29:
                                       while(true)
                                       {
                                          if(!(_loc6_ || _loc2_))
                                          {
                                             continue loop28;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          this.§;"%§ = param1.§-!X§;
                                          loop30:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(param1.§+A§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(this.§;"%§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() * param1.§"U§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().§,!L§ = §§pop();
                                             loop31:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(b2Math);
                                                §§push(param1.§&Y§);
                                                §§push(this.§,!L§);
                                                if(!_loc5_)
                                                {
                                                   §§push(this.§;"%§);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() * b2internal::5"2);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().m_maxLength1 = §§pop().§+!G§(§§pop(),§§pop());
                                                loop32:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(b2Math);
                                                   §§push(param1.§&F§);
                                                   §§push(this.§,!L§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(b2internal::5"2);
                                                      if(!_loc5_)
                                                      {
                                                         addr113:
                                                         §§push(§§pop() - §§pop());
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(this.§;"%§);
                                                         }
                                                         §§pop().m_maxLength2 = §§pop().§+!G§(§§pop(),§§pop());
                                                         loop33:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop30;
                                                               }
                                                               continue loop31;
                                                            }
                                                            continue loop32;
                                                            addr73:
                                                            loop34:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  continue loop27;
                                                               }
                                                               continue loop33;
                                                               addr52:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                                  continue loop34;
                                                                  addr68:
                                                                  this.m_limitImpulse2 = 0;
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               continue loop4;
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         continue loop30;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§goto(addr113);
                                                }
                                             }
                                          }
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr440);
                              }
                           }
                        }
                     }
                  }
                  continue loop2;
               }
            }
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?H.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§0"3§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.m_u2.x);
                  if(!_loc3_)
                  {
                     addr48:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(this.§0"3§);
                        if(!_loc3_)
                        {
                           §§goto(addr77);
                        }
                        addr77:
                        §§push(§§pop() * §§pop());
                        if(_loc2_ || this)
                        {
                           addr73:
                           §§push(this.m_u2.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr48);
            }
            §§goto(addr77);
         }
         §§goto(addr48);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §,!R§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§0"+§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§]!H§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §6=§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§0"+§.m_xf.position.Copy();
         if(_loc3_ || _loc2_)
         {
            _loc1_.§]!H§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::<!1.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§0"+§.m_xf.position.x);
         if(_loc6_ || _loc1_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc6_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§0"+§.m_xf.position.y);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.y);
         if(!_loc7_)
         {
            §§push(§§pop() - _loc3_);
            if(_loc6_)
            {
               addr100:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr100);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::?H.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§0"+§.m_xf.position.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_ || _loc1_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§0"+§.m_xf.position.y);
            if(_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(!_loc6_)
               {
                  addr66:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc2_);
                  if(_loc7_)
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
                  var _loc4_:* = §§pop();
                  §§push(_loc1_.y);
                  if(_loc7_ || _loc2_)
                  {
                     §§push(§§pop() - _loc3_);
                     if(!(_loc6_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr76);
            }
            §§goto(addr66);
         }
         §§goto(addr41);
      }
      
      public function §`!M§() : Number
      {
         return this.§;"%§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1679
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
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
