package §,!0§
{
   import §"J§.b2Body;
   import §"J§.b2TimeStep;
   import §<!a§.b2Mat22;
   import §<!a§.b2Mat33;
   import §<!a§.b2Math;
   import §<!a§.b2Vec2;
   import §<!a§.b2Vec3;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §+T§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2RevoluteJoint))
         {
            §+T§ = new b2Vec2();
         }
      }
      
      private var §>!H§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §7g§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §5!i§:b2Vec3;
      
      private var §`t§:Number;
      
      private var §?j§:b2Mat33;
      
      private var §>E§:Number;
      
      private var § !P§:Boolean;
      
      private var §`!A§:Number;
      
      private var §?!,§:Number;
      
      private var §!!$§:Boolean;
      
      private var §"e§:Number;
      
      private var §@k§:Number;
      
      private var §>!8§:Number;
      
      private var §<!3§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§>!H§ = new b2Mat22();
            loop0:
            while(true)
            {
               this.K1 = new b2Mat22();
               addr304:
               while(true)
               {
                  this.K2 = new b2Mat22();
               }
               loop5:
               while(true)
               {
                  if(_loc3_ && _loc3_)
                  {
                     continue loop0;
                  }
                  this.§7g§ = new b2Vec2();
                  loop6:
                  while(true)
                  {
                     this.m_localAnchor1 = new b2Vec2();
                     loop7:
                     while(true)
                     {
                        this.m_localAnchor2 = new b2Vec2();
                        addr238:
                        loop8:
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              this.§5!i§ = new b2Vec3();
                              loop9:
                              while(true)
                              {
                                 this.§?j§ = new b2Mat33();
                                 loop10:
                                 while(_loc2_)
                                 {
                                    super(param1);
                                    while(true)
                                    {
                                       this.m_localAnchor1.SetV(param1.§3!&§);
                                       loop12:
                                       for(; _loc2_ || param1; while(true)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop10;
                                          }
                                          continue loop12;
                                       },continue loop8)
                                       {
                                          this.m_localAnchor2.SetV(param1.§2!P§);
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             this.§"e§ = param1.§ "2§;
                                             continue loop12;
                                          }
                                          while(true)
                                          {
                                             this.impulse3 = new b2Vec3();
                                             break loop8;
                                             §§goto(addr192);
                                          }
                                          addr192:
                                       }
                                    }
                                 }
                                 §§goto(addr304);
                                 addr122:
                                 if(_loc2_ || param1)
                                 {
                                    this.§>!8§ = param1.§ !A§;
                                    loop18:
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          addr105:
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             this.§`!A§ = param1.§@!U§;
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop18;
                                                }
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                this.§?!,§ = param1.motorSpeed;
                                                loop20:
                                                while(true)
                                                {
                                                   this.§!!$§ = param1.§2<§;
                                                   loop21:
                                                   while(true)
                                                   {
                                                      this.§ !P§ = param1.§#a§;
                                                      while(true)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            continue loop20;
                                                         }
                                                         continue loop21;
                                                         addr70:
                                                         this.§<!3§ = b2internal::^#;
                                                         if(_loc2_)
                                                         {
                                                            addr34:
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               return;
                                                            }
                                                            addr120:
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr122);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr162);
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          else
                                          {
                                             addr139:
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   this.§`t§ = 0;
                                                   while(true)
                                                   {
                                                      this.§@k§ = param1.§9"!§;
                                                      §§goto(addr120);
                                                      continue loop18;
                                                   }
                                                   addr134:
                                                }
                                                break;
                                                §§goto(addr105);
                                             }
                                             addr139:
                                          }
                                          while(true)
                                          {
                                             this.K3 = new b2Mat22();
                                             §§goto(addr282);
                                             §§goto(addr139);
                                          }
                                          addr288:
                                       }
                                       §§goto(addr134);
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           break;
                           if(!(_loc3_ && this))
                           {
                              continue loop7;
                           }
                        }
                        while(true)
                        {
                           this.impulse2 = new b2Vec2();
                           continue loop5;
                           §§goto(addr238);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr288);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+d.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::"!l.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || this)
         {
            §§push(this.§5!i§.x);
            if(!(_loc3_ && param1))
            {
               §§goto(addr46);
            }
            §§goto(addr64);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            addr64:
            §§push(§§pop() * this.§5!i§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            return §§pop() * this.§5!i§.z;
         }
      }
      
      public function §7i§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(b2internal::"!l.m_sweep.a - b2internal::+d.m_sweep.a);
         if(!(_loc1_ && this))
         {
            return §§pop() - this.§"e§;
         }
      }
      
      public function §&!8§() : Number
      {
         return b2internal::"!l.m_angularVelocity - b2internal::+d.m_angularVelocity;
      }
      
      public function §`J§() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §+K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!$§ = param1;
         }
      }
      
      public function §2z§() : Number
      {
         return this.§@k§;
      }
      
      public function §5!V§() : Number
      {
         return this.§>!8§;
      }
      
      public function §7!&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§@k§ = param1;
         }
         do
         {
            this.§>!8§ = param2;
         }
         while(_loc4_);
         
      }
      
      public function §%!o§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            b2internal::+d.SetAwake(true);
            do
            {
               b2internal::"!l.SetAwake(true);
            }
            while(!_loc1_);
            
         }
         return this.§ !P§;
      }
      
      public function §`l§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !P§ = param1;
         }
      }
      
      public function §97§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            b2internal::+d.SetAwake(true);
            while(true)
            {
               b2internal::"!l.SetAwake(true);
               while(!_loc3_)
               {
                  this.§?!,§ = param1;
                  if(!_loc3_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §,;§() : Number
      {
         return this.§?!,§;
      }
      
      public function §!"1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!A§ = param1;
         }
      }
      
      public function §<S§() : Number
      {
         return this.§`!A§;
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
