package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Mat33;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §2"=§.b2Vec3;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §%7§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%7§ = new b2Vec2();
         }
      }
      
      private var §@V§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §3R§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §?;§:b2Vec3;
      
      private var §;!T§:Number;
      
      private var §@e§:b2Mat33;
      
      private var §+!§:Number;
      
      private var §"%§:Boolean;
      
      private var §#!i§:Number;
      
      private var §3u§:Number;
      
      private var §!k§:Boolean;
      
      private var §4"4§:Number;
      
      private var §>A§:Number;
      
      private var §?!Q§:Number;
      
      private var §'T§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@V§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     addr125:
                     if(_loc2_)
                     {
                        continue;
                     }
                     this.§!k§ = param1.§4!E§;
                     loop21:
                     while(true)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 addr104:
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          this.§"%§ = param1.§7!S§;
                                          loop22:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr57:
                                                if(_loc3_ || this)
                                                {
                                                   addr64:
                                                   if(_loc3_ || param1)
                                                   {
                                                      addr71:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr80:
                                                            if(!(_loc2_ && this))
                                                            {
                                                               continue;
                                                            }
                                                            addr240:
                                                            while(true)
                                                            {
                                                               this.m_localAnchor1 = new b2Vec2();
                                                               break loop22;
                                                               §§goto(addr80);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr199:
                                                      while(true)
                                                      {
                                                         this.m_localAnchor1.SetV(param1.§!2§);
                                                         addr194:
                                                         while(true)
                                                         {
                                                            this.m_localAnchor2.SetV(param1.§ !c§);
                                                         }
                                                         §§goto(addr71);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§4"4§ = param1.§+!H§;
                                                      while(true)
                                                      {
                                                         this.§?;§.§@!s§();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            this.§;!T§ = 0;
                                                            addr167:
                                                            while(true)
                                                            {
                                                               this.§>A§ = param1.§@!U§;
                                                               addr162:
                                                               while(true)
                                                               {
                                                                  this.§?!Q§ = param1.§6!#§;
                                                                  continue loop15;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr125);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr194);
                                                      }
                                                   }
                                                   §§goto(addr167);
                                                   §§goto(addr57);
                                                }
                                                continue loop2;
                                             }
                                             continue loop21;
                                          }
                                          while(_loc3_)
                                          {
                                             this.m_localAnchor2 = new b2Vec2();
                                             while(true)
                                             {
                                                this.§?;§ = new b2Vec3();
                                                continue loop1;
                                             }
                                          }
                                          while(true)
                                          {
                                             this.impulse3 = new b2Vec3();
                                             §§goto(addr252);
                                          }
                                          addr258:
                                       }
                                       break;
                                    }
                                    addr205:
                                    while(_loc3_)
                                    {
                                       super(param1);
                                    }
                                    §§goto(addr226);
                                    §§goto(addr199);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr143);
                     }
                     while(true)
                     {
                        this.§3R§ = new b2Vec2();
                        §§goto(addr240);
                     }
                  }
               }
            }
         }
         §§goto(addr258);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && this))
         {
            §§push(this.§?;§.x);
            if(_loc3_)
            {
               addr42:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop() * this.§?;§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§?;§.z;
         }
      }
      
      public function §^!H§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal:: `.m_sweep.a - b2internal::0"7.m_sweep.a);
         if(_loc2_)
         {
            return §§pop() - this.§4"4§;
         }
      }
      
      public function §%l§() : Number
      {
         return b2internal:: `.m_angularVelocity - b2internal::0"7.m_angularVelocity;
      }
      
      public function §%!a§() : Boolean
      {
         return this.§!k§;
      }
      
      public function §9H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!k§ = param1;
         }
      }
      
      public function §4!Z§() : Number
      {
         return this.§>A§;
      }
      
      public function §5!9§() : Number
      {
         return this.§?!Q§;
      }
      
      public function §<4§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§>A§ = param1;
         }
         do
         {
            this.§?!Q§ = param2;
         }
         while(!(_loc3_ || param2));
         
      }
      
      public function §;_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            b2internal::0"7.SetAwake(true);
            do
            {
               b2internal:: `.SetAwake(true);
            }
            while(_loc1_ && this);
            
         }
         return this.§"%§;
      }
      
      public function §]v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"%§ = param1;
         }
      }
      
      public function §^x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::0"7.SetAwake(true);
         }
         while(true)
         {
            b2internal:: `.SetAwake(true);
            while(_loc3_)
            {
               this.§3u§ = param1;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §7U§() : Number
      {
         return this.§3u§;
      }
      
      public function §"!Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§#!i§ = param1;
         }
      }
      
      public function §70§() : Number
      {
         return this.§#!i§;
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
