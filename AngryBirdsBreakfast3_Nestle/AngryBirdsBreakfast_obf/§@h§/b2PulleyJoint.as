package §@h§
{
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §>!>§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>!>§ = 2;
         }
      }
      
      private var §3! §:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §,!g§:Number;
      
      private var §^!&§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §5!n§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §6!h§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §1!5§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && param1))
         {
            this.m_groundAnchor1 = new b2Vec2();
            loop0:
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
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        continue loop2;
                        loop27:
                        for(; _loc5_ || param1; while(_loc5_ || this)
                        {
                           this.§^!&§ = param1.§`,§;
                           §§goto(addr171);
                           §§goto(addr55);
                        })
                        {
                           this.m_localAnchor1.SetV(param1.§8D§);
                           while(_loc5_ || _loc3_)
                           {
                              if(_loc5_ || param1)
                              {
                                 this.m_localAnchor2.SetV(param1.§@"$§);
                                 continue loop27;
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              §§push(this.m_groundAnchor1);
                              loop8:
                              while(true)
                              {
                                 §§push(param1.§1w§);
                                 addr358:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr359:
                                    while(true)
                                    {
                                       §§push(this.§3! §);
                                       addr361:
                                       while(true)
                                       {
                                          §§push(§§pop().m_xf);
                                          addr362:
                                          while(true)
                                          {
                                             §§push(§§pop().position);
                                             addr363:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr364:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   addr365:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr366:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr201);
                           }
                           addr201:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr352);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§6!h§);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(this.m_u2.x);
                  if(_loc2_)
                  {
                     addr43:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc3_)
                     {
                     }
                     addr72:
                     return new §§pop().b2Vec2(§§pop(),§§pop() * this.m_u2.y);
                     addr68:
                  }
                  §§push(this.§6!h§);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_)
                     {
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §0!g§() : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Vec2 = this.§3! §.m_xf.position.Copy();
         if(!_loc3_)
         {
            _loc1_.§?4§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §?3§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§3! §.m_xf.position.Copy();
         if(!(_loc2_ && this))
         {
            _loc1_.§?4§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::9!F.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§3! §.m_xf.position.x);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§3! §.m_xf.position.y);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(!(_loc6_ && this))
            {
               addr81:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(_loc7_)
            {
               §§push(§§pop() - _loc2_);
               if(_loc7_)
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc7_ || this)
                  {
                     addr111:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr111);
            }
            §§goto(addr91);
         }
         §§goto(addr81);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::[!n.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§3! §.m_xf.position.x);
         if(!(_loc6_ && _loc1_))
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§3! §.m_xf.position.y);
         if(_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor2.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_.x);
         if(_loc7_ || _loc1_)
         {
            §§push(§§pop() - _loc2_);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc1_.y);
         if(_loc7_)
         {
            §§push(§§pop() - _loc3_);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
      }
      
      public function § null§() : Number
      {
         return this.§^!&§;
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
