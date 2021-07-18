package §"d§
{
   import §3!R§.b2Body;
   import §3!R§.b2TimeStep;
   import §6A§.b2Mat22;
   import §6A§.b2Math;
   import §6A§.b2Vec2;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §%a§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%a§ = 2;
         }
      }
      
      private var §4F§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §3!;§:Number;
      
      private var §?!e§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §%!@§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §12§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §"2§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
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
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        while(true)
                        {
                           this.m_u2 = new b2Vec2();
                           loop5:
                           while(true)
                           {
                              super(param1);
                              while(true)
                              {
                                 this.§4F§ = b2internal::#A.m_world.m_groundBody;
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§%R§);
                                       addr380:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr381:
                                          while(true)
                                          {
                                             §§push(this.§4F§);
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
                                    addr67:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    this.m_limitImpulse2 = 0;
                                    addr74:
                                    if(!(_loc6_ || this))
                                    {
                                       loop34:
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             addr56:
                                             if(_loc5_ && _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(b2Math);
                                                   §§push(param1.§-!]§);
                                                   §§push(this.§3!;§);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(b2internal::%a);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            addr104:
                                                            §§push(§§pop() / this.§?!e§);
                                                         }
                                                         §§pop().m_maxLength2 = §§pop().§ d§(§§pop(),§§pop());
                                                         while(!_loc5_)
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               this.§12§ = 0;
                                                               while(_loc6_)
                                                               {
                                                                  this.m_limitImpulse1 = 0;
                                                                  continue loop34;
                                                               }
                                                               continue;
                                                               addr79:
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                   §§goto(addr104);
                                                   §§goto(addr56);
                                                }
                                                return;
                                                addr44:
                                                addr145:
                                             }
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                §§goto(addr67);
                                             }
                                             else
                                             {
                                                §§goto(addr224);
                                             }
                                          }
                                          §§goto(addr79);
                                       }
                                       §§goto(addr171);
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr44);
                                 }
                                 if(_loc5_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 §§push(b2Math);
                                 §§push(param1.§7!B§);
                                 §§push(this.§3!;§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(this.§?!e§);
                                    if(!(_loc5_ && param1))
                                    {
                                       §§push(§§pop() * b2internal::%a);
                                    }
                                    §§push(§§pop() - §§pop());
                                 }
                                 §§pop().m_maxLength1 = §§pop().§ d§(§§pop(),§§pop());
                                 §§goto(addr145);
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  §§goto(addr320);
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               this.m_localAnchor2.SetV(param1.§=i§);
               §§goto(addr207);
            }
         }
         §§goto(addr44);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::#A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§12§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§goto(addr87);
               }
               §§push(param1);
               if(_loc2_)
               {
                  §§push(this.§12§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        addr83:
                        §§push(this.m_u2.y);
                     }
                     §§goto(addr87);
                  }
                  addr87:
                  §§push(this.m_u2.x);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  return new §§pop().b2Vec2(§§pop(),§§pop());
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr83);
            }
         }
         §§goto(addr87);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §`!H§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§4F§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§ v§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §@K§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§4F§.m_xf.position.Copy();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§ v§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::#A.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§4F§.m_xf.position.x);
         if(_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(_loc6_ || _loc1_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§4F§.m_xf.position.y);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc6_ || this)
            {
               addr75:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!(_loc7_ && _loc2_))
            {
               §§push(§§pop() - _loc2_);
               if(!(_loc7_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            §§push(_loc1_.y);
            if(_loc6_)
            {
               §§push(§§pop() - _loc3_);
               if(_loc6_ || _loc1_)
               {
                  addr110:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr110);
         }
         §§goto(addr75);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal::2!`.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§4F§.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(!(_loc6_ && this))
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§4F§.m_xf.position.y);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc7_ || this)
               {
                  addr76:
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(_loc1_.x);
               if(_loc7_)
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
                  if(!(_loc6_ && _loc1_))
                  {
                     addr101:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
               }
               §§goto(addr101);
            }
            §§goto(addr76);
         }
         §§goto(addr41);
      }
      
      public function §?f§() : Number
      {
         return this.§?!e§;
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
