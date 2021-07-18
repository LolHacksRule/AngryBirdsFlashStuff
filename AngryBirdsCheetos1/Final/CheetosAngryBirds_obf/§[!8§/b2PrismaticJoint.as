package §[!8§
{
   import §0!G§.b2Mat22;
   import §0!G§.b2Mat33;
   import §0!G§.b2Math;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §0!G§.b2Vec3;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   import §`j§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §7!"§:b2Vec2;
      
      private var §4!8§:b2Vec2;
      
      private var § -§:Number;
      
      private var §"Z§:b2Vec2;
      
      private var §#9§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §]2§:b2Mat33;
      
      private var § !6§:b2Vec3;
      
      private var §4v§:Number;
      
      private var §]!]§:Number;
      
      private var §@!C§:Number;
      
      private var §=!C§:Number;
      
      private var §"`§:Number;
      
      private var §'!E§:Number;
      
      private var §?;§:Boolean;
      
      private var §`a§:Boolean;
      
      private var §,4§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc2_)
         {
            this.m_localAnchor1 = new b2Vec2();
         }
         while(true)
         {
            this.m_localAnchor2 = new b2Vec2();
            while(true)
            {
               this.§7!"§ = new b2Vec2();
               while(true)
               {
                  this.§4!8§ = new b2Vec2();
                  while(true)
                  {
                     this.§"Z§ = new b2Vec2();
                     while(true)
                     {
                        this.§#9§ = new b2Vec2();
                        while(_loc5_)
                        {
                           this.§]2§ = new b2Mat33();
                           loop6:
                           while(true)
                           {
                              this.§ !6§ = new b2Vec3();
                              addr308:
                              while(true)
                              {
                                 super(param1);
                                 continue loop6;
                              }
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                           this.§@!C§ = param1.§[F§;
                           §§goto(addr180);
                        }
                     }
                  }
               }
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
               this.§ !6§.§3a§();
               §§goto(addr206);
            }
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
            if(_loc2_)
            {
               §§push(this.§#9§.x);
               if(_loc2_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§]!]§);
                     if(_loc2_)
                     {
                        §§push(this.§ !6§.z);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc3_)
                           {
                              addr55:
                              §§push(this.§"Z§.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr81:
                                       §§push(§§pop() * §§pop());
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          addr85:
                                          §§push(this.§ !6§.x);
                                          if(_loc2_)
                                          {
                                             §§push(this.§#9§.y);
                                             if(_loc2_)
                                             {
                                                addr95:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc3_)
                                                {
                                                   addr98:
                                                   §§push(this.§]!]§);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr107:
                                                      §§push(this.§ !6§.z);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§goto(addr139);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr107);
                           }
                           addr139:
                           §§push(§§pop() + §§pop());
                           if(!(_loc3_ && this))
                           {
                              addr135:
                              §§push(this.§"Z§.y);
                           }
                           return new §§pop().b2Vec2(§§pop(),§§pop() * (§§pop() + §§pop()));
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr85);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr81);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            return §§pop() * this.§ !6§.y;
         }
      }
      
      public function §,1§() : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         §§push((_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x);
         if(_loc10_)
         {
            §§push(§§pop() - _loc4_.x);
            if(!(_loc11_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_.y);
         if(!(_loc11_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.y);
            if(_loc10_)
            {
               addr77:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            var _loc8_:b2Vec2;
            §§push((_loc8_ = _loc1_.§!!%§(this.§7!"§)).x);
            if(!_loc11_)
            {
               §§push(_loc6_);
               if(_loc10_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc11_ && _loc2_))
                  {
                     addr105:
                     §§push(_loc8_.y);
                     if(_loc10_ || _loc2_)
                     {
                        §§push(§§pop() * _loc7_);
                        if(_loc11_ && _loc3_)
                        {
                        }
                        §§goto(addr143);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc10_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  §§push(§§pop());
               }
               addr143:
               var _loc9_:* = §§pop();
               return §§pop();
            }
            §§goto(addr105);
         }
         §§goto(addr77);
      }
      
      public function §<P§() : Number
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::`p;
         var _loc2_:b2Body = b2internal::%^;
         _loc3_ = _loc1_.m_xf.R;
         §§push(this.m_localAnchor1.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc1_.m_sweep.localCenter.x);
            if(!_loc21_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.m_localAnchor1.y);
            if(!_loc21_)
            {
               §§push(§§pop() - _loc1_.m_sweep.localCenter.y);
               if(_loc22_ || _loc1_)
               {
                  addr62:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(_loc3_.col1.x);
               if(!(_loc21_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(_loc22_ || _loc1_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc22_ || _loc1_)
                     {
                        §§push(_loc3_.col2.x);
                        if(!(_loc21_ && _loc1_))
                        {
                           addr102:
                           §§push(§§pop() + §§pop() * _loc5_);
                           if(_loc21_ && _loc2_)
                           {
                           }
                           var _loc6_:* = §§pop();
                           if(!(_loc21_ && _loc3_))
                           {
                              §§push(_loc3_.col1.y);
                              if(!(_loc21_ && this))
                              {
                                 §§push(_loc4_);
                                 if(_loc22_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc22_)
                                    {
                                       §§push(_loc3_.col2.y);
                                       if(_loc22_ || _loc1_)
                                       {
                                          addr150:
                                          §§push(§§pop() * _loc5_);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc21_)
                                       {
                                          addr155:
                                          §§push(Number(§§pop()));
                                          if(_loc22_ || _loc2_)
                                          {
                                             addr163:
                                             _loc5_ = §§pop();
                                             if(_loc22_ || _loc2_)
                                             {
                                                addr171:
                                                §§push(_loc6_);
                                                if(!_loc21_)
                                                {
                                                   addr175:
                                                   _loc4_ = Number(§§pop());
                                                }
                                                §§goto(addr175);
                                             }
                                             _loc3_ = _loc2_.m_xf.R;
                                             §§push(this.m_localAnchor2.x);
                                             if(_loc22_)
                                             {
                                                §§push(§§pop() - _loc2_.m_sweep.localCenter.x);
                                                if(_loc22_)
                                                {
                                                   addr193:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc7_:* = §§pop();
                                                §§push(this.m_localAnchor2.y);
                                                if(!_loc21_)
                                                {
                                                   §§push(§§pop() - _loc2_.m_sweep.localCenter.y);
                                                   if(_loc22_ || this)
                                                   {
                                                      addr212:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(!(_loc21_ && _loc1_))
                                                   {
                                                      §§push(_loc3_.col1);
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc21_ && this))
                                                         {
                                                            §§push(_loc7_);
                                                            if(!_loc21_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc22_)
                                                               {
                                                                  §§push(_loc3_.col2);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc22_ || _loc1_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    addr333:
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_.col1);
                                                                                          if(!_loc22_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          loop8:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_);
                                                                                             if(_loc22_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr289:
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             loop9:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop10:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   addr294:
                                                                                                   while(_loc22_ || this)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      if(_loc22_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr340:
                                                                                                         }
                                                                                                         if(!_loc21_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr332:
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr354:
                                                               §§goto(addr355);
                                                               §§push(Number(§§pop()));
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc22_)
                                                      {
                                                         §§goto(addr354);
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr193);
                                          }
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr171);
                        }
                     }
                     §§goto(addr102);
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr62);
         }
         §§goto(addr43);
      }
      
      public function §&&§() : Boolean
      {
         return this.§?;§;
      }
      
      public function §=<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§?;§ = param1;
            if(!(_loc2_ && this))
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §!!E§() : Number
      {
         return this.§@!C§;
      }
      
      public function §@U§() : Number
      {
         return this.§=!C§;
      }
      
      public function §6!L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            b2internal::`p.SetAwake(true);
         }
         loop0:
         while(true)
         {
            b2internal::%^.SetAwake(true);
            while(true)
            {
               this.§@!C§ = param1;
               while(_loc4_)
               {
                  if(_loc4_)
                  {
                     this.§=!C§ = param2;
                     if(_loc4_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §!o§() : Boolean
      {
         return this.§`a§;
      }
      
      public function §?!2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            b2internal::`p.SetAwake(true);
            do
            {
               b2internal::%^.SetAwake(true);
               do
               {
                  this.§`a§ = param1;
               }
               while(_loc2_ && this);
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function §;X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§'!E§ = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §class§() : Number
      {
         return this.§'!E§;
      }
      
      public function §8,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            b2internal::`p.SetAwake(true);
            while(true)
            {
               b2internal::%^.SetAwake(true);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§"`§ = param1;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §#!?§() : Number
      {
         return this.§]!]§;
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
