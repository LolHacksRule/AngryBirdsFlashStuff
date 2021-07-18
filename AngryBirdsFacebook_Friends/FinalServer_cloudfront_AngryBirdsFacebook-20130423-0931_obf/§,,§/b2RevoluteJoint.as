package §,,§
{
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Mat33;
   import §6!^§.b2Math;
   import §6!^§.b2Vec2;
   import §6!^§.b2Vec3;
   import §6"1§.b2Body;
   import §6"1§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §;d§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;d§ = new b2Vec2();
         }
      }
      
      private var K:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §-S§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §2!_§:b2Vec3;
      
      private var §3!1§:Number;
      
      private var §,!v§:b2Mat33;
      
      private var §!K§:Number;
      
      private var §3!A§:Boolean;
      
      private var §5!s§:Number;
      
      private var §+"$§:Number;
      
      private var §9!=§:Boolean;
      
      private var §,z§:Number;
      
      private var §>l§:Number;
      
      private var §[S§:Number;
      
      private var §@!3§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.K = new b2Mat22();
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
                           while(true)
                           {
                              this.§-S§ = new b2Vec2();
                              continue loop1;
                              addr100:
                              if(!(_loc2_ && _loc3_))
                              {
                                 this.§9!=§ = param1.§5!!§;
                                 loop22:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       this.§3!A§ = param1.§<!0§;
                                       loop23:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             addr59:
                                             if(!(_loc2_ && this))
                                             {
                                                addr66:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                loop13:
                                                for(; _loc3_; §§goto(addr66))
                                                {
                                                   this.§,z§ = param1.§1b§;
                                                   loop14:
                                                   while(!_loc2_)
                                                   {
                                                      this.§2!_§.§%y§();
                                                      while(!_loc2_)
                                                      {
                                                         this.§3!1§ = 0;
                                                         while(true)
                                                         {
                                                            this.§>l§ = param1.§?X§;
                                                            addr137:
                                                            while(!_loc2_)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr146:
                                                                  if(!(_loc2_ && param1))
                                                                  {
                                                                     this.§[S§ = param1.§>p§;
                                                                     break loop23;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            return;
                                                            addr51:
                                                         }
                                                         addr196:
                                                         while(true)
                                                         {
                                                            this.m_localAnchor1.SetV(param1.§-!,§);
                                                            addr189:
                                                            while(_loc3_)
                                                            {
                                                               this.m_localAnchor2.SetV(param1.§["9§);
                                                               continue loop13;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§,!v§ = new b2Mat33();
                                                      break loop13;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   super(param1);
                                                   §§goto(addr196);
                                                }
                                             }
                                             break;
                                          }
                                          continue loop22;
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             while(true)
                                             {
                                                this.§5!s§ = param1.§4f§;
                                                addr113:
                                                while(true)
                                                {
                                                   this.§+"$§ = param1.motorSpeed;
                                                   §§goto(addr91);
                                                }
                                             }
                                             §§goto(addr51);
                                             addr121:
                                          }
                                          break;
                                          §§goto(addr59);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr113);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!_loc2_)
         {
            §§push(this.§2!_§.x);
            if(_loc3_ || param1)
            {
               addr42:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() * this.§2!_§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr42);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            return §§pop() * this.§2!_§.z;
         }
      }
      
      public function §6""§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(b2internal::5!.m_sweep.a - b2internal::3"X.m_sweep.a);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() - this.§,z§;
         }
      }
      
      public function §[Y§() : Number
      {
         return b2internal::5!.m_angularVelocity - b2internal::3"X.m_angularVelocity;
      }
      
      public function §6m§() : Boolean
      {
         return this.§9!=§;
      }
      
      public function §[g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9!=§ = param1;
         }
      }
      
      public function §1I§() : Number
      {
         return this.§>l§;
      }
      
      public function §=@§() : Number
      {
         return this.§[S§;
      }
      
      public function §=!d§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§>l§ = param1;
            do
            {
               this.§[S§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §-"0§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            b2internal::3"X.SetAwake(true);
            do
            {
               b2internal::5!.SetAwake(true);
            }
            while(!(_loc2_ || _loc1_));
            
         }
         return this.§3!A§;
      }
      
      public function §1![§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§3!A§ = param1;
         }
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            b2internal::3"X.SetAwake(true);
            while(true)
            {
               b2internal::5!.SetAwake(true);
               while(!_loc2_)
               {
                  this.§+"$§ = param1;
                  if(_loc3_ || this)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §+"E§() : Number
      {
         return this.§+"$§;
      }
      
      public function §,"6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§5!s§ = param1;
         }
      }
      
      public function §@f§() : Number
      {
         return this.§5!s§;
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
