package § !V§
{
   import §+S§.b2Body;
   import §+S§.b2TimeStep;
   import §2"=§.b2Mat22;
   import §2"=§.b2Mat33;
   import §2"=§.b2Math;
   import §2"=§.b2Vec2;
   import §2"=§.b2Vec3;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §!"#§:b2Vec2;
      
      private var §>!7§:b2Vec2;
      
      private var §4"4§:Number;
      
      private var §?;§:b2Vec3;
      
      private var §@e§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!"#§ = new b2Vec2();
            while(true)
            {
               this.§>!7§ = new b2Vec2();
               loop1:
               for(; _loc2_ || _loc3_; while(_loc2_ || _loc2_)
               {
                  super(param1);
                  §§goto(addr100);
               })
               {
                  this.§?;§ = new b2Vec3();
                  loop2:
                  while(true)
                  {
                     this.§@e§ = new b2Mat33();
                     continue loop1;
                     addr58:
                     if(_loc3_ && _loc2_)
                     {
                        continue;
                     }
                     this.§@e§ = new b2Mat33();
                     addr75:
                     if(_loc2_ || param1)
                     {
                        addr35:
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc3_)
                           {
                              addr44:
                              if(_loc2_ || _loc3_)
                              {
                                 return;
                                 addr100:
                              }
                              while(_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§!"#§.SetV(param1.§!2§);
                                    loop6:
                                    while(true)
                                    {
                                       this.§>!7§.SetV(param1.§ !c§);
                                       addr88:
                                       while(true)
                                       {
                                          this.§4"4§ = param1.§+!H§;
                                          addr81:
                                          while(true)
                                          {
                                             this.§?;§.§@!s§();
                                             addr56:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr58);
                                                §§goto(addr75);
                                             }
                                             continue loop2;
                                             §§goto(addr35);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr44);
                              }
                              continue loop1;
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::0"7.GetWorldPoint(this.§!"#§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: `.GetWorldPoint(this.§>!7§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(!(_loc2_ && param1))
         {
            §§push(this.§?;§.x);
            if(_loc3_)
            {
               addr52:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * this.§?;§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr52);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§?;§.z;
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
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::0"7;
         var _loc5_:b2Body = b2internal:: `;
         var _loc6_:b2Vec2 = _loc4_.§,b§;
         §§push(_loc4_.m_angularVelocity);
         if(!(_loc22_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§,b§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc23_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§;k§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§;k§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§6x§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§6x§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§!"#§.x);
         if(!(_loc22_ && this))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!(_loc22_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§!"#§.y);
         if(!(_loc22_ && param1))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc22_)
            {
               addr128:
               §§push(Number(§§pop()));
            }
            var _loc15_:* = §§pop();
            if(_loc23_)
            {
               §§push(_loc2_.col1);
               while(true)
               {
                  §§push(§§pop().x);
                  if(_loc23_ || _loc3_)
                  {
                     addr252:
                     §§push(_loc14_);
                     if(!(_loc22_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(_loc2_.col2);
                           addr249:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr250:
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr251:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                           }
                        }
                        addr247:
                     }
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        addr253:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr252:
                  }
                  addr254:
                  while(true)
                  {
                     _loc3_ = §§pop();
                  }
               }
               addr230:
            }
            loop8:
            while(true)
            {
               while(true)
               {
                  §§push(_loc2_.col1);
                  if(_loc23_)
                  {
                     §§push(§§pop().y);
                     if(_loc23_)
                     {
                        if(_loc23_)
                        {
                           if(_loc23_)
                           {
                              §§push(_loc14_);
                              if(_loc23_)
                              {
                                 §§push(§§pop() * §§pop());
                                 while(_loc23_)
                                 {
                                    §§push(_loc2_.col2);
                                    if(_loc23_ || param1)
                                    {
                                       §§push(§§pop().y);
                                       if(_loc23_)
                                       {
                                          while(_loc23_ || _loc3_)
                                          {
                                             if(!_loc22_)
                                             {
                                                §§push(_loc15_);
                                                if(!(_loc22_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr218:
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc15_ = §§pop();
                                                            addr220:
                                                            while(_loc23_ || _loc2_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc23_ || _loc2_)
                                                               {
                                                                  if(!(_loc22_ && _loc3_))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop13;
                                                                  }
                                                                  continue loop14;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   addr217:
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr250);
                                             }
                                             §§goto(addr251);
                                          }
                                          §§goto(addr252);
                                          addr199:
                                       }
                                       §§goto(addr217);
                                    }
                                    else
                                    {
                                       §§goto(addr249);
                                    }
                                 }
                                 §§goto(addr253);
                              }
                              §§goto(addr199);
                           }
                           else
                           {
                              §§goto(addr247);
                           }
                        }
                        break;
                     }
                     §§goto(addr218);
                  }
                  else
                  {
                     §§goto(addr230);
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr128);
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
