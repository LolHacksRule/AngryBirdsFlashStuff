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
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var § case§:b2Vec2;
      
      private var §;"7§:b2Vec2;
      
      private var §,z§:Number;
      
      private var §2!_§:b2Vec3;
      
      private var §,!v§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ case§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§;"7§ = new b2Vec2();
               addr129:
               while(true)
               {
                  this.§2!_§ = new b2Vec3();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§,!v§ = new b2Mat33();
            while(_loc2_)
            {
               super(param1);
               loop5:
               while(!(_loc3_ && param1))
               {
                  this.§ case§.SetV(param1.§-!,§);
                  loop6:
                  while(true)
                  {
                     this.§;"7§.SetV(param1.§["9§);
                     while(!_loc3_)
                     {
                        this.§,z§ = param1.§1b§;
                        loop8:
                        do
                        {
                           this.§2!_§.§%y§();
                           for(; !_loc3_; this.§,!v§ = new b2Mat33(),if(!_loc3_)
                           {
                              continue loop8;
                           })
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr129);
                           }
                           continue loop6;
                        }
                        while(!_loc2_);
                        
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                     continue loop5;
                  }
               }
            }
            §§goto(addr116);
         }
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"X.GetWorldPoint(this.§ case§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::5!.GetWorldPoint(this.§;"7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§2!_§.x);
            if(_loc2_)
            {
               §§goto(addr41);
            }
            §§goto(addr49);
         }
         addr41:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            addr49:
            §§push(§§pop() * this.§2!_§.y);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§2!_§.z;
         }
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
         var _loc22_:Boolean = true;
         var _loc23_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = b2internal::3"X;
         var _loc5_:b2Body = b2internal::5!;
         var _loc6_:b2Vec2 = _loc4_.§"!_§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc23_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§"!_§;
         §§push(_loc5_.m_angularVelocity);
         if(!(_loc23_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§-@§);
         if(_loc22_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§-@§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§,H§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§,H§);
         if(_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§ case§.x);
         if(_loc22_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§ case§.y);
         if(_loc22_ || param1)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(_loc22_ || _loc2_)
            {
               addr127:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(!_loc23_)
            {
               §§push(_loc2_.col1);
               loop0:
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc22_ || param1)
                  {
                     §§push(_loc14_);
                     if(!(_loc23_ && param1))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc22_)
                        {
                           §§push(_loc2_.col2);
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr247:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr248:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr249:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc23_ && _loc2_))
                                       {
                                          addr257:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          addr257:
                                       }
                                    }
                                 }
                              }
                              addr182:
                              §§push(_loc2_.col2);
                              if(!(_loc22_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§pop().y);
                              if(_loc22_ || _loc3_)
                              {
                                 addr199:
                                 §§push(_loc15_);
                                 if(_loc22_ || _loc2_)
                                 {
                                    addr208:
                                    §§push(§§pop() * §§pop());
                                    if(_loc22_ || _loc3_)
                                    {
                                       if(!_loc23_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                _loc15_ = §§pop();
                                                addr220:
                                                addr259:
                                                while(_loc22_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc23_)
                                                   {
                                                      addr136:
                                                      if(_loc22_ || param1)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc14_);
                                                            if(!_loc23_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc22_ || _loc2_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr199);
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr248);
                                                         addr171:
                                                      }
                                                   }
                                                   if(_loc22_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop11;
                                                }
                                                while(true)
                                                {
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.col1);
                                                      if(!_loc22_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr171);
                                                      §§push(§§pop().y);
                                                   }
                                                   §§goto(addr257);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr208);
                           }
                        }
                        §§goto(addr258);
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr257);
               }
            }
            §§goto(addr259);
         }
         §§goto(addr127);
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
