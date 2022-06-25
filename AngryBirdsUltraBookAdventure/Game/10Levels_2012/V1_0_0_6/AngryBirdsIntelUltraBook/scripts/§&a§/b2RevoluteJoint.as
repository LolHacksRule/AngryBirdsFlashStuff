package §&a§
{
   import §#V§.b2Body;
   import §#V§.b2TimeStep;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §;%§.b2Mat22;
   import §;%§.b2Mat33;
   import §;%§.b2Math;
   import §;%§.b2Vec2;
   import §;%§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §[U§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[U§ = new b2Vec2();
         }
      }
      
      private var §&+§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §0c§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §<<§:b2Vec3;
      
      private var §1!'§:Number;
      
      private var § ,§:b2Mat33;
      
      private var §&!w§:Number;
      
      private var §2'§:Boolean;
      
      private var §0&§:Number;
      
      private var §0i§:Number;
      
      private var §;!m§:Boolean;
      
      private var §0!$§:Number;
      
      private var § !6§:Number;
      
      private var §>!j§:Number;
      
      private var §"!"§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§&+§ = new b2Mat22();
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
                              this.§0c§ = new b2Vec2();
                              while(true)
                              {
                                 this.m_localAnchor1 = new b2Vec2();
                                 addr238:
                                 addr179:
                                 while(true)
                                 {
                                    this.m_localAnchor2 = new b2Vec2();
                                    continue loop4;
                                 }
                                 addr179:
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    continue loop3;
                                 }
                              }
                              addr84:
                              if(_loc2_ || this)
                              {
                                 this.§2'§ = param1.§2!s§;
                                 while(true)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§1!'§ = 0;
                                             loop17:
                                             for(; !_loc3_; if(!(_loc2_ || this))
                                             {
                                                continue;
                                             },if(_loc3_ && this)
                                             {
                                                continue loop1;
                                             },§§goto(addr84))
                                             {
                                                this.§ !6§ = param1.§#!I§;
                                                loop18:
                                                while(true)
                                                {
                                                   this.§>!j§ = param1.§06§;
                                                   loop19:
                                                   while(true)
                                                   {
                                                      this.§0&§ = param1.§2I§;
                                                      loop20:
                                                      while(true)
                                                      {
                                                         this.§0i§ = param1.motorSpeed;
                                                         addr97:
                                                         addr172:
                                                         loop21:
                                                         while(!(_loc3_ && this))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               this.§;!m§ = param1.§-Q§;
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  continue loop21;
                                                                  addr34:
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            this.§0!$§ = param1.§<?§;
                                                            addr156:
                                                            addr217:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr158:
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.§<<§.§&!K§();
                                                                  continue loop16;
                                                               }
                                                               addr211:
                                                               while(true)
                                                               {
                                                                  super(param1);
                                                                  continue loop1;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               this.§ ,§ = new b2Mat33();
                                                               §§goto(addr211);
                                                               §§goto(addr158);
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr179);
                                          }
                                          break;
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr238);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<<§ = new b2Vec3();
            §§goto(addr217);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc3_)
         {
            §§push(this.§<<§.x);
            if(_loc2_ || _loc2_)
            {
               addr41:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop() * this.§<<§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr41);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            return §§pop() * this.§<<§.z;
         }
      }
      
      public function §?O§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::[=.m_sweep.a - b2internal::>0.m_sweep.a);
         if(!(_loc1_ && _loc2_))
         {
            return §§pop() - this.§0!$§;
         }
      }
      
      public function §#!d§() : Number
      {
         return b2internal::[=.m_angularVelocity - b2internal::>0.m_angularVelocity;
      }
      
      public function §=P§() : Boolean
      {
         return this.§;!m§;
      }
      
      public function §5!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§;!m§ = param1;
         }
      }
      
      public function §-J§() : Number
      {
         return this.§ !6§;
      }
      
      public function § !'§() : Number
      {
         return this.§>!j§;
      }
      
      public function §1!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ !6§ = param1;
            do
            {
               this.§>!j§ = param2;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function §[!k§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            b2internal::>0.SetAwake(true);
         }
         do
         {
            b2internal::[=.SetAwake(true);
         }
         while(_loc1_);
         
         return this.§2'§;
      }
      
      public function §5!x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2'§ = param1;
         }
      }
      
      public function §4!K§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::>0.SetAwake(true);
         }
         while(true)
         {
            b2internal::[=.SetAwake(true);
            while(!(_loc2_ && param1))
            {
               this.§0i§ = param1;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §@!+§() : Number
      {
         return this.§0i§;
      }
      
      public function §`!b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0&§ = param1;
         }
      }
      
      public function §=+§() : Number
      {
         return this.§0&§;
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
