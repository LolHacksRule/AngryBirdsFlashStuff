package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §";§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §";§ = 2;
         }
      }
      
      private var §,X§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §%!2§:Number;
      
      private var §%!3§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §%!I§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var § !6§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §>+§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || this)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     while(!(_loc5_ && this))
                     {
                        §§push(this.m_groundAnchor2);
                        loop17:
                        while(true)
                        {
                           §§push(param1.§00§);
                           addr285:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(!_loc5_)
                              {
                                 §§push(this.§,X§);
                                 while(true)
                                 {
                                    §§push(§§pop().m_xf);
                                    addr291:
                                    while(true)
                                    {
                                       §§push(§§pop().position);
                                       addr292:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr293:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr290:
                              }
                              addr294:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop17;
                              }
                           }
                        }
                     }
                  }
                  if(_loc5_ && _loc3_)
                  {
                     continue;
                  }
                  this.m_limitImpulse1 = 0;
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr413);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::`p.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::%^.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§ !6§);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc2_ && _loc2_))
               {
                  addr33:
                  §§push(this.m_u2.x);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr54:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        addr62:
                        §§push(this.§ !6§);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              addr87:
                              §§push(§§pop() * this.m_u2.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop());
                        }
                        §§goto(addr87);
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr54);
            }
            §§goto(addr62);
         }
         §§goto(addr33);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`!G§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§,X§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§-i§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §>Y§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§,X§.m_xf.position.Copy();
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§-i§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::`p.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§,X§.m_xf.position.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!(_loc7_ && _loc3_))
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§,X§.m_xf.position.y);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + this.m_groundAnchor1.y);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() - _loc2_);
               if(!_loc7_)
               {
                  addr85:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc6_ || this)
                  {
                     addr105:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr105);
            }
            §§goto(addr85);
         }
         §§goto(addr40);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::%^.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§,X§.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_ || this)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§,X§.m_xf.position.y);
            if(_loc7_ || this)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() - _loc2_);
               if(_loc7_ || this)
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!_loc6_)
               {
                  §§push(§§pop() - _loc3_);
                  if(!_loc6_)
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr101);
            }
            §§goto(addr91);
         }
         §§goto(addr41);
      }
      
      public function §9@§() : Number
      {
         return this.§%!3§;
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
