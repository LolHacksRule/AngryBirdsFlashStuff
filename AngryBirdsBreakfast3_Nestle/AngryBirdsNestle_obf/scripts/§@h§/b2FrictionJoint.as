package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2TimeStep;
   import §@!E§.b2Mat22;
   import §@!E§.b2Math;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §=!P§:b2Vec2;
      
      private var §;z§:b2Vec2;
      
      public var §2z§:b2Mat22;
      
      public var §`!"§:Number;
      
      private var §1!4§:b2Vec2;
      
      private var §,<§:Number;
      
      private var §!]§:Number;
      
      private var §3Y§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!P§ = new b2Vec2();
            while(true)
            {
               this.§;z§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§2z§ = new b2Mat22();
                  loop2:
                  while(true)
                  {
                     this.§1!4§ = new b2Vec2();
                     loop3:
                     while(true)
                     {
                        super(param1);
                        loop4:
                        while(true)
                        {
                           this.§=!P§.SetV(param1.§8D§);
                           while(true)
                           {
                              this.§;z§.SetV(param1.§@"$§);
                              addr126:
                              while(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                              addr95:
                              if(!(_loc2_ || param1))
                              {
                                 continue;
                              }
                              this.§,<§ = 0;
                              loop11:
                              while(true)
                              {
                                 this.§!]§ = param1.§6g§;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop11;
                                    }
                                    addr50:
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr57:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    addr93:
                                    while(_loc2_)
                                    {
                                       §§goto(addr95);
                                       §§goto(addr50);
                                    }
                                    addr73:
                                    §§goto(addr126);
                                    this.§3Y§ = param1.maxTorque;
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    addr35:
                                    if(_loc2_ || _loc2_)
                                    {
                                       return;
                                    }
                                    addr119:
                                    while(true)
                                    {
                                       this.§`!"§ = 0;
                                       continue loop4;
                                       §§goto(addr35);
                                    }
                                 }
                                 continue loop1;
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
            this.§2z§.§>![§();
            §§goto(addr119);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::9!F.GetWorldPoint(this.§=!P§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[!n.GetWorldPoint(this.§;z§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(this.§1!4§.x);
            if(!(_loc2_ && param1))
            {
               §§goto(addr47);
            }
            §§goto(addr65);
         }
         addr47:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            addr65:
            §§push(§§pop() * this.§1!4§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || this)
         {
            return §§pop() * this.§,<§;
         }
      }
      
      public function §"j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!]§ = param1;
         }
      }
      
      public function §,!B§() : Number
      {
         return this.§!]§;
      }
      
      public function §!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§3Y§ = param1;
         }
      }
      
      public function §&"&§() : Number
      {
         return this.§3Y§;
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
         return true;
      }
   }
}
