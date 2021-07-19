package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Mat33;
   import §0!G§.b2Math;
   import §0!G§.b2Vec2;
   import §0!G§.b2Vec3;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §"R§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"R§ = new b2Vec2();
         }
      }
      
      private var §2#§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §<!§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var § !6§:b2Vec3;
      
      private var §]!]§:Number;
      
      private var §3!7§:b2Mat33;
      
      private var §4v§:Number;
      
      private var §`a§:Boolean;
      
      private var §`!1§:Number;
      
      private var §'!E§:Number;
      
      private var §?;§:Boolean;
      
      private var §@4§:Number;
      
      private var §+§:Number;
      
      private var §]F§:Number;
      
      private var §,4§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2#§ = new b2Mat22();
         }
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
                  loop3:
                  while(true)
                  {
                     this.impulse3 = new b2Vec3();
                     loop4:
                     while(true)
                     {
                        this.impulse2 = new b2Vec2();
                        loop5:
                        while(true)
                        {
                           this.§<!§ = new b2Vec2();
                           while(true)
                           {
                              this.m_localAnchor1 = new b2Vec2();
                              addr229:
                              while(true)
                              {
                                 this.m_localAnchor2 = new b2Vec2();
                                 continue loop4;
                              }
                              loop10:
                              while(_loc3_ || _loc2_)
                              {
                                 super(param1);
                                 loop11:
                                 while(!_loc2_)
                                 {
                                    this.m_localAnchor1.SetV(param1.§;9§);
                                    loop12:
                                    for(; !_loc2_; while(true)
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop12;
                                    },continue loop4)
                                    {
                                       this.m_localAnchor2.SetV(param1.§-y§);
                                       while(true)
                                       {
                                          this.§@4§ = param1.§;=§;
                                          loop14:
                                          while(!_loc2_)
                                          {
                                             this.§ !6§.§3a§();
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         this.§]!]§ = 0;
                                                         loop16:
                                                         do
                                                         {
                                                            this.§+§ = param1.§4O§;
                                                            while(!_loc2_)
                                                            {
                                                               this.§]F§ = param1.§0"§;
                                                               continue loop12;
                                                               loop20:
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  this.§?;§ = param1.§1&§;
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        addr95:
                                                                        while(!_loc2_)
                                                                        {
                                                                           this.§'!E§ = param1.motorSpeed;
                                                                           continue loop20;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop20;
                                                                     addr30:
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            continue loop15;
                                                         }
                                                         while(!(_loc3_ || param1));
                                                         
                                                         return;
                                                      }
                                                      break;
                                                   }
                                                   addr208:
                                                   while(_loc3_)
                                                   {
                                                      this.§3!7§ = new b2Mat33();
                                                      continue loop10;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop14;
                                             }
                                             continue loop1;
                                          }
                                          continue loop11;
                                       }
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr229);
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(_loc2_ && _loc3_)
            {
               continue;
            }
            this.§`!1§ = param1.§5!F§;
            §§goto(addr95);
         }
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§ !6§.x);
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr41);
            }
            §§goto(addr59);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && this))
         {
            addr59:
            §§push(§§pop() * this.§ !6§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§ !6§.z;
         }
      }
      
      public function §?_§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::%^.m_sweep.a - b2internal::`p.m_sweep.a);
         if(!_loc1_)
         {
            return §§pop() - this.§@4§;
         }
      }
      
      public function §<P§() : Number
      {
         return b2internal::%^.m_angularVelocity - b2internal::`p.m_angularVelocity;
      }
      
      public function §&&§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §=<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?;§ = param1;
         }
      }
      
      public function §!!E§() : Number
      {
         return this.§+§;
      }
      
      public function §@U§() : Number
      {
         return this.§]F§;
      }
      
      public function §6!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§+§ = param1;
            do
            {
               this.§]F§ = param2;
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §!o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            b2internal::`p.SetAwake(true);
         }
         do
         {
            b2internal::%^.SetAwake(true);
         }
         while(!_loc1_);
         
         return this.§`a§;
      }
      
      public function §?!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`a§ = param1;
         }
      }
      
      public function §;X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               while(!(_loc2_ && _loc3_))
               {
                  this.§'!E§ = param1;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §class§() : Number
      {
         return this.§'!E§;
      }
      
      public function §'"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!1§ = param1;
         }
      }
      
      public function §@2§() : Number
      {
         return this.§`!1§;
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
