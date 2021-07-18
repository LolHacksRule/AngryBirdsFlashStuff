package §3g§
{
   import §&!"§.b2Body;
   import §&!"§.b2TimeStep;
   import §9"§.b2Mat22;
   import §9"§.b2Math;
   import §9"§.b2Vec2;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §9$§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9$§ = 2;
         }
      }
      
      private var §65§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var § !M§:Number;
      
      private var §'+§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §<Z§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §8v§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §!u§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(!(_loc6_ && param1))
               {
                  this.m_u2 = new b2Vec2();
                  while(true)
                  {
                     super(param1);
                     loop6:
                     while(true)
                     {
                        this.§65§ = b2internal::2!D.m_world.m_groundBody;
                        while(true)
                        {
                           §§push(this.m_groundAnchor1);
                           loop8:
                           while(true)
                           {
                              §§push(param1.§,_§);
                              addr380:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr381:
                                 while(true)
                                 {
                                    §§push(this.§65§);
                                    addr383:
                                    while(true)
                                    {
                                       §§push(§§pop().m_xf);
                                       addr384:
                                       while(true)
                                       {
                                          §§push(§§pop().position);
                                          addr385:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr386:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr387:
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
                           while(_loc5_ || _loc3_)
                           {
                              §§push(this.m_groundAnchor2);
                              loop18:
                              while(true)
                              {
                                 §§push(param1.§1r§);
                                 addr302:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr303:
                                    while(true)
                                    {
                                       §§push(this.§65§);
                                       addr305:
                                       while(true)
                                       {
                                          §§push(§§pop().m_xf);
                                          addr306:
                                          while(true)
                                          {
                                             §§push(§§pop().position);
                                             addr307:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr308:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr309:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc5_ || _loc3_)
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(_loc5_ || _loc3_)
                     {
                        this.m_localAnchor2.SetV(param1.§ !Q§);
                        §§goto(addr230);
                     }
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(param1.§,Z§);
                  if(_loc5_ || this)
                  {
                     §§push(this.§'+§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * param1.§ f§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§ !M§ = §§pop();
                  §§goto(addr198);
               }
            }
         }
         §§goto(addr454);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::;B.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(this.§8v§);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this.m_u2.x);
                  if(_loc3_ || this)
                  {
                     §§goto(addr64);
                  }
                  §§goto(addr72);
               }
               §§goto(addr64);
            }
            §§goto(addr94);
         }
         addr64:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc2_ && this))
         {
            addr72:
            §§push(this.§8v§);
            if(_loc3_)
            {
               §§goto(addr98);
            }
            §§push(§§pop() * §§pop());
         }
         addr98:
         §§push(§§pop() * §§pop());
         if(!(_loc2_ && this))
         {
            addr94:
            §§push(this.m_u2.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §4!5§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§65§.m_xf.position.Copy();
         if(_loc3_ || this)
         {
            _loc1_.§`!§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §9F§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§65§.m_xf.position.Copy();
         if(!(_loc2_ && this))
         {
            _loc1_.§`!§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::2!D.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§65§.m_xf.position.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§65§.m_xf.position.y);
         if(_loc6_ || _loc1_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!(_loc7_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() - _loc2_);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.y);
         if(!(_loc7_ && _loc1_))
         {
            §§push(§§pop() - _loc3_);
            if(_loc6_ || _loc1_)
            {
               addr115:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         }
         §§goto(addr115);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::;B.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§65§.m_xf.position.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc6_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§65§.m_xf.position.y);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(!(_loc6_ && _loc1_))
            {
               addr81:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() - _loc2_);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc7_)
            {
               §§push(§§pop() - _loc3_);
               if(_loc7_)
               {
                  addr106:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr106);
         }
         §§goto(addr81);
      }
      
      public function §>!W§() : Number
      {
         return this.§'+§;
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
