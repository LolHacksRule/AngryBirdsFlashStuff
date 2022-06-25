package §2!'§
{
   import §#I§.b2Body;
   import §#I§.b2TimeStep;
   import §&H§.b2Mat22;
   import §&H§.b2Mat33;
   import §&H§.b2Math;
   import §&H§.b2Vec2;
   import §&H§.b2Vec3;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §@!E§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@!E§ = new b2Vec2();
         }
      }
      
      private var §+!K§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §]!D§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §&""§:b2Vec3;
      
      private var §^!f§:Number;
      
      private var §"X§:b2Mat33;
      
      private var §1!F§:Number;
      
      private var §%A§:Boolean;
      
      private var §6^§:Number;
      
      private var §!z§:Number;
      
      private var §>7§:Boolean;
      
      private var §>!^§:Number;
      
      private var §3T§:Number;
      
      private var §;v§:Number;
      
      private var §=H§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!K§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               loop1:
               while(true)
               {
                  this.K2 = new b2Mat22();
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     addr257:
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        addr149:
                        if(_loc2_ || param1)
                        {
                           continue loop1;
                        }
                     }
                     addr78:
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     this.§>7§ = param1.§&!A§;
                     do
                     {
                        this.§%A§ = param1.§ !q§;
                        loop22:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                           addr91:
                           while(true)
                           {
                              this.§!z§ = param1.motorSpeed;
                              addr69:
                              loop20:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    addr71:
                                    if(_loc3_ && param1)
                                    {
                                       break;
                                    }
                                    §§goto(addr78);
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    this.m_localAnchor2.SetV(param1.§true§);
                                    addr176:
                                    while(true)
                                    {
                                       this.§>!^§ = param1.§-!u§;
                                       loop14:
                                       while(true)
                                       {
                                          this.§&""§.§+J§();
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop14;
                                             }
                                             addr138:
                                             if(_loc2_ || param1)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr149);
                                                   }
                                                   while(true)
                                                   {
                                                      this.impulse2 = new b2Vec2();
                                                      addr245:
                                                      while(true)
                                                      {
                                                         this.§]!D§ = new b2Vec2();
                                                         break loop20;
                                                      }
                                                   }
                                                   addr251:
                                                }
                                                while(true)
                                                {
                                                   this.m_localAnchor2 = new b2Vec2();
                                                   addr208:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§&""§ = new b2Vec3();
                                                   }
                                                }
                                                addr216:
                                             }
                                             while(true)
                                             {
                                                this.§"X§ = new b2Mat33();
                                                addr194:
                                                while(_loc2_)
                                                {
                                                   super(param1);
                                                   while(true)
                                                   {
                                                      this.m_localAnchor1.SetV(param1.§'G§);
                                                      continue loop12;
                                                   }
                                                }
                                                §§goto(addr208);
                                                §§goto(addr138);
                                             }
                                             addr119:
                                             while(!_loc3_)
                                             {
                                                this.§3T§ = param1.§;U§;
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         this.§;v§ = param1.§'S§;
                                                         break loop22;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr194);
                                                break loop22;
                                             }
                                          }
                                          §§goto(addr257);
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.m_localAnchor1 = new b2Vec2();
                                    §§goto(addr216);
                                 }
                                 break;
                                 §§goto(addr71);
                              }
                              §§goto(addr245);
                           }
                        }
                        while(_loc2_ || this)
                        {
                           this.§6^§ = param1.§&!u§;
                           §§goto(addr91);
                        }
                        §§goto(addr119);
                     }
                     while(!(_loc2_ || param1));
                     
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr110);
                        }
                        if(!_loc3_)
                        {
                           return;
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr69);
                  }
               }
            }
         }
         §§goto(addr251);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::&A.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::4!d.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(this.§&""§.x);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr47);
            }
            §§goto(addr50);
         }
         addr47:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc2_)
         {
            addr50:
            §§push(§§pop() * this.§&""§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§&""§.z;
         }
      }
      
      public function §5M§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::4!d.m_sweep.a - b2internal::&A.m_sweep.a);
         if(_loc2_ || _loc2_)
         {
            return §§pop() - this.§>!^§;
         }
      }
      
      public function §#;§() : Number
      {
         return b2internal::4!d.m_angularVelocity - b2internal::&A.m_angularVelocity;
      }
      
      public function §%!u§() : Boolean
      {
         return this.§>7§;
      }
      
      public function §`9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>7§ = param1;
         }
      }
      
      public function §+!-§() : Number
      {
         return this.§3T§;
      }
      
      public function §6X§() : Number
      {
         return this.§;v§;
      }
      
      public function §;!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§3T§ = param1;
         }
         do
         {
            this.§;v§ = param2;
         }
         while(!_loc3_);
         
      }
      
      public function §5!r§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            b2internal::&A.SetAwake(true);
            do
            {
               b2internal::4!d.SetAwake(true);
            }
            while(_loc2_ && _loc2_);
            
         }
         return this.§%A§;
      }
      
      public function §!""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%A§ = param1;
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::&A.SetAwake(true);
            do
            {
               b2internal::4!d.SetAwake(true);
               do
               {
                  this.§!z§ = param1;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §3S§() : Number
      {
         return this.§!z§;
      }
      
      public function §4&§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§6^§ = param1;
         }
      }
      
      public function §^6§() : Number
      {
         return this.§6^§;
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
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
