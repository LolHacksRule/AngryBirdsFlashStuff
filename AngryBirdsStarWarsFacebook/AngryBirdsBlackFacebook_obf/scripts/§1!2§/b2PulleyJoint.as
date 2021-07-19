package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      b2internal static const §!!N§:Number = 2.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!N§ = 2;
         }
      }
      
      private var §[!K§:b2Body;
      
      private var m_groundAnchor1:b2Vec2;
      
      private var m_groundAnchor2:b2Vec2;
      
      private var m_localAnchor1:b2Vec2;
      
      private var m_localAnchor2:b2Vec2;
      
      private var m_u1:b2Vec2;
      
      private var m_u2:b2Vec2;
      
      private var §-"§:Number;
      
      private var §-_§:Number;
      
      private var m_maxLength1:Number;
      
      private var m_maxLength2:Number;
      
      private var §6"M§:Number;
      
      private var m_limitMass1:Number;
      
      private var m_limitMass2:Number;
      
      private var §##,§:Number;
      
      private var m_limitImpulse1:Number;
      
      private var m_limitImpulse2:Number;
      
      private var §&>§:int;
      
      private var m_limitState1:int;
      
      private var m_limitState2:int;
      
      public function b2PulleyJoint(param1:b2PulleyJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.m_groundAnchor1 = new b2Vec2();
            while(true)
            {
               this.m_groundAnchor2 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_localAnchor1 = new b2Vec2();
                  while(true)
                  {
                     this.m_localAnchor2 = new b2Vec2();
                     while(true)
                     {
                        this.m_u1 = new b2Vec2();
                        while(!_loc6_)
                        {
                           this.m_u2 = new b2Vec2();
                           while(true)
                           {
                              super(param1);
                              loop6:
                              while(true)
                              {
                                 this.§[!K§ = b2internal::2!g.m_world.m_groundBody;
                                 addr367:
                                 while(true)
                                 {
                                    §§push(this.m_groundAnchor1);
                                    addr343:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1.§6!b§);
                                       addr345:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(this.§[!K§);
                                             while(true)
                                             {
                                                §§push(§§pop().m_xf);
                                                addr356:
                                                addr302:
                                                while(true)
                                                {
                                                   §§push(§§pop().position);
                                                   addr357:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr358:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                   }
                                                }
                                                §§push(this.§[!K§);
                                                if(!(_loc5_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop().m_xf);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().position);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc5_ || this)
                                                      {
                                                         addr331:
                                                         §§pop().y = §§pop() - §§pop();
                                                         while(_loc5_ || _loc3_)
                                                         {
                                                            §§push(this.m_groundAnchor2);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(param1.§'p§);
                                                               addr262:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(this.§[!K§);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().m_xf);
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           addr274:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr275:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr272:
                                                                  }
                                                                  addr276:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                            if(_loc5_ || param1)
                                                            {
                                                               this.§-_§ = param1.§@!%§;
                                                               continue loop6;
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr357);
                                                   }
                                                   §§goto(addr358);
                                                }
                                                else
                                                {
                                                   §§goto(addr356);
                                                }
                                             }
                                          }
                                          addr359:
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
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     this.§##,§ = 0;
                     §§goto(addr82);
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.m_groundAnchor1);
            if(_loc5_ || param1)
            {
               §§push(param1.§6!b§);
               if(_loc5_)
               {
                  §§push(§§pop().y);
                  if(!_loc6_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr302);
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr331);
               }
               §§goto(addr345);
            }
            §§goto(addr343);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§##,§);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  §§push(this.m_u2.x);
                  if(_loc2_ || param1)
                  {
                     addr53:
                     §§push(§§pop() * §§pop());
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(this.§##,§);
                        if(_loc2_)
                        {
                           §§goto(addr82);
                        }
                        addr82:
                        §§push(§§pop() * §§pop());
                        if(!(_loc3_ && _loc3_))
                        {
                           addr78:
                           §§push(this.m_u2.y);
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                        §§push(§§pop() * §§pop());
                     }
                  }
                  §§goto(addr78);
               }
               §§goto(addr53);
            }
            §§goto(addr82);
         }
         §§goto(addr53);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function §-#6§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§[!K§.m_xf.position.Copy();
         if(_loc3_)
         {
            _loc1_.§ true§(this.m_groundAnchor1);
         }
         return _loc1_;
      }
      
      public function §=!V§() : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Vec2 = this.§[!K§.m_xf.position.Copy();
         if(!_loc2_)
         {
            _loc1_.§ true§(this.m_groundAnchor2);
         }
         return _loc1_;
      }
      
      public function GetLength1() : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:b2Vec2 = b2internal::2!g.GetWorldPoint(this.m_localAnchor1);
         §§push(this.§[!K§.m_xf.position.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.m_groundAnchor1.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§[!K§.m_xf.position.y);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() + this.m_groundAnchor1.y);
            if(_loc6_)
            {
               addr65:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc1_.x);
            if(!_loc7_)
            {
               §§push(§§pop() - _loc2_);
               if(_loc6_)
               {
                  addr75:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(_loc1_.y);
               if(_loc6_ || _loc1_)
               {
                  §§push(§§pop() - _loc3_);
                  if(_loc6_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc5_:* = §§pop();
               return Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            §§goto(addr75);
         }
         §§goto(addr65);
      }
      
      public function GetLength2() : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:b2Vec2 = b2internal:: "z.GetWorldPoint(this.m_localAnchor2);
         §§push(this.§[!K§.m_xf.position.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.m_groundAnchor2.x);
            if(_loc7_ || _loc3_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§[!K§.m_xf.position.y);
            if(_loc7_)
            {
               §§push(§§pop() + this.m_groundAnchor2.y);
               if(_loc7_ || _loc1_)
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
            if(!_loc6_)
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
         §§goto(addr41);
      }
      
      public function § #U§() : Number
      {
         return this.§-_§;
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
