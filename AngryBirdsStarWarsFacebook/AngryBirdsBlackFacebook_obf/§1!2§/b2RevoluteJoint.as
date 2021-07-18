package §1!2§
{
   import §+#$§.b2Body;
   import §+#$§.b2TimeStep;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Mat22;
   import §[R§.b2Mat33;
   import §[R§.b2Math;
   import §[R§.b2Vec2;
   import §[R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §&"&§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&"&§ = new b2Vec2();
         }
      }
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §6!Q§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §##,§:b2Vec3;
      
      private var §4#5§:Number;
      
      private var §9#6§:b2Mat33;
      
      private var §99§:Number;
      
      private var §9!X§:Boolean;
      
      private var §0#E§:Number;
      
      private var §7#R§:Number;
      
      private var §'s§:Boolean;
      
      private var §^!#§:Number;
      
      private var §2!"§:Number;
      
      private var §-#2§:Number;
      
      private var §<!G§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.K = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               while(true)
               {
                  this.K2 = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.K3 = new b2Mat22();
                     loop3:
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           addr246:
                           addr213:
                           while(true)
                           {
                              this.§6!Q§ = new b2Vec2();
                              addr240:
                              while(true)
                              {
                                 this.m_localAnchor1 = new b2Vec2();
                                 while(true)
                                 {
                                    this.m_localAnchor2 = new b2Vec2();
                                    addr226:
                                    while(!_loc2_)
                                    {
                                    }
                                 }
                              }
                           }
                           loop10:
                           while(_loc3_ || param1)
                           {
                              this.§9#6§ = new b2Mat33();
                              loop11:
                              while(true)
                              {
                                 super(param1);
                                 loop12:
                                 for(; _loc3_; while(_loc3_ || _loc2_)
                                 {
                                    this.§^!#§ = param1.§!#W§;
                                    continue loop2;
                                 })
                                 {
                                    this.m_localAnchor1.SetV(param1.§!"4§);
                                    loop13:
                                    while(true)
                                    {
                                       this.m_localAnchor2.SetV(param1.§#"B§);
                                       continue loop12;
                                       addr87:
                                       if(_loc2_ && this)
                                       {
                                          continue;
                                       }
                                       if(!_loc2_)
                                       {
                                          this.§7#R§ = param1.motorSpeed;
                                          loop21:
                                          while(_loc3_)
                                          {
                                             this.§'s§ = param1.§#d§;
                                             loop22:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   this.§9!X§ = param1.§!#G§;
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue loop21;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         §§goto(addr61);
                                                         continue loop21;
                                                      }
                                                      continue loop22;
                                                      addr61:
                                                      this.§<!G§ = b2internal::"!G;
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      addr35:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         break loop13;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§goto(addr87);
                                                         §§goto(addr35);
                                                      }
                                                      §§goto(addr226);
                                                      addr85:
                                                   }
                                                   continue loop11;
                                                }
                                                addr102:
                                                while(_loc3_ || _loc3_)
                                                {
                                                   this.§0#E§ = param1.§?"Z§;
                                                   §§goto(addr85);
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          while(_loc3_)
                                          {
                                             this.§4#5§ = 0;
                                             continue loop11;
                                          }
                                          continue loop3;
                                          addr158:
                                       }
                                       §§goto(addr226);
                                    }
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    §§goto(addr246);
                                 }
                                 continue loop10;
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ && param1))
                  {
                     this.§2!"§ = param1.§ "x§;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§##,§ = new b2Vec3();
            §§goto(addr213);
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
         if(!_loc3_)
         {
            §§push(this.§##,§.x);
            if(_loc2_)
            {
               §§goto(addr36);
            }
            §§goto(addr54);
         }
         addr36:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr54:
            §§push(§§pop() * this.§##,§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            return §§pop() * this.§##,§.z;
         }
      }
      
      public function §4"F§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal:: "z.m_sweep.a - b2internal::2!g.m_sweep.a);
         if(_loc2_)
         {
            return §§pop() - this.§^!#§;
         }
      }
      
      public function §&!Z§() : Number
      {
         return b2internal:: "z.m_angularVelocity - b2internal::2!g.m_angularVelocity;
      }
      
      public function §['§() : Boolean
      {
         return this.§'s§;
      }
      
      public function §8""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'s§ = param1;
         }
      }
      
      public function §3!;§() : Number
      {
         return this.§2!"§;
      }
      
      public function §+"!§() : Number
      {
         return this.§-#2§;
      }
      
      public function § !L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§2!"§ = param1;
            do
            {
               this.§-#2§ = param2;
            }
            while(_loc3_ && this);
            
         }
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§9!X§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            b2internal::2!g.SetAwake(true);
         }
         do
         {
            b2internal:: "z.SetAwake(true);
            do
            {
               this.§9!X§ = param1;
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      public function §8#S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::2!g.SetAwake(true);
            while(true)
            {
               b2internal:: "z.SetAwake(true);
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§7#R§ = param1;
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §+#0§() : Number
      {
         return this.§7#R§;
      }
      
      public function §92§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0#E§ = param1;
         }
      }
      
      public function §1!u§() : Number
      {
         return this.§0#E§;
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
