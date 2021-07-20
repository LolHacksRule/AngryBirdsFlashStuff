package §;!#§
{
   import § o§.b2Body;
   import § o§.b2TimeStep;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §6!H§.b2Mat22;
   import §6!H§.b2Mat33;
   import §6!H§.b2Math;
   import §6!H§.b2Vec2;
   import §6!H§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §for§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §for§ = new b2Vec2();
         }
      }
      
      private var §-!5§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §`w§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §==§:b2Vec3;
      
      private var §+!$§:Number;
      
      private var §>§:b2Mat33;
      
      private var §>!§:Number;
      
      private var §2!c§:Boolean;
      
      private var §6!5§:Number;
      
      private var §`W§:Number;
      
      private var §3!e§:Boolean;
      
      private var §#!Z§:Number;
      
      private var §@!R§:Number;
      
      private var §!d§:Number;
      
      private var §,=§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!5§ = new b2Mat22();
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
                     while(true)
                     {
                        this.impulse3 = new b2Vec3();
                        addr211:
                        addr54:
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           while(true)
                           {
                              this.§`w§ = new b2Vec2();
                              addr197:
                              while(!_loc3_)
                              {
                              }
                           }
                        }
                        if(_loc3_ && _loc2_)
                        {
                           continue;
                        }
                        this.§,=§ = b2internal::9!d;
                        addr61:
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              addr31:
                              if(!(_loc3_ && param1))
                              {
                                 addr38:
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§==§ = new b2Vec3();
                                             while(true)
                                             {
                                                this.§>§ = new b2Mat33();
                                                loop11:
                                                for(; _loc2_; loop14:
                                                while(!(_loc3_ && param1))
                                                {
                                                   this.§#!Z§ = param1.§49§;
                                                   loop15:
                                                   while(_loc2_)
                                                   {
                                                      this.§==§.§7_§();
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         this.§+!$§ = 0;
                                                         loop17:
                                                         while(true)
                                                         {
                                                            this.§@!R§ = param1.§<!B§;
                                                            loop18:
                                                            while(_loc2_)
                                                            {
                                                               this.§!d§ = param1.§=!9§;
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  this.§6!5§ = param1.§[!+§;
                                                                  addr87:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break loop19;
                                                                     }
                                                                     this.§`W§ = param1.motorSpeed;
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                              addr67:
                                                                           }
                                                                           this.§3!e§ = param1.§ c§;
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§2!c§ = param1.§32§;
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr54);
                                                                                 §§goto(addr61);
                                                                              }
                                                                              §§goto(addr156);
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.m_localAnchor2 = new b2Vec2();
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr31);
                                                                  }
                                                                  §§goto(addr38);
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr163);
                                                })
                                                {
                                                   super(param1);
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.m_localAnchor1.SetV(param1.§!!U§);
                                                      while(!_loc3_)
                                                      {
                                                         this.m_localAnchor2.SetV(param1.§"!'§);
                                                         continue loop11;
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr67);
                        }
                        §§goto(addr50);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.m_localAnchor1 = new b2Vec2();
            §§goto(addr191);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6z.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::3D.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§==§.x);
            if(!(_loc2_ && this))
            {
               §§goto(addr52);
            }
            §§goto(addr55);
         }
         addr52:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!_loc2_)
         {
            addr55:
            §§push(§§pop() * this.§==§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!(_loc2_ && this))
         {
            return §§pop() * this.§==§.z;
         }
      }
      
      public function §?!^§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::3D.m_sweep.a - b2internal::6z.m_sweep.a);
         if(_loc2_)
         {
            return §§pop() - this.§#!Z§;
         }
      }
      
      public function §,&§() : Number
      {
         return b2internal::3D.m_angularVelocity - b2internal::6z.m_angularVelocity;
      }
      
      public function §>!L§() : Boolean
      {
         return this.§3!e§;
      }
      
      public function §@>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!e§ = param1;
         }
      }
      
      public function §+!I§() : Number
      {
         return this.§@!R§;
      }
      
      public function §`m§() : Number
      {
         return this.§!d§;
      }
      
      public function §64§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@!R§ = param1;
            do
            {
               this.§!d§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      public function §;!c§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            b2internal::6z.SetAwake(true);
            do
            {
               b2internal::3D.SetAwake(true);
            }
            while(_loc2_ && this);
            
         }
         return this.§2!c§;
      }
      
      public function §#<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!c§ = param1;
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::6z.SetAwake(true);
         }
         do
         {
            b2internal::3D.SetAwake(true);
            do
            {
               this.§`W§ = param1;
            }
            while(_loc3_);
            
         }
         while(!_loc2_);
         
      }
      
      public function § U§() : Number
      {
         return this.§`W§;
      }
      
      public function §@K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§6!5§ = param1;
         }
      }
      
      public function §]!V§() : Number
      {
         return this.§6!5§;
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
