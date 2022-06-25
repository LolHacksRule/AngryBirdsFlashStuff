package §[!N§
{
   import § D§.b2Body;
   import § D§.b2TimeStep;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJoint extends b2Joint
   {
       
      
      private var §^!i§:b2Vec2;
      
      private var §?!5§:b2Vec2;
      
      public var §=_§:b2Mat22;
      
      public var §>5§:Number;
      
      private var §%M§:b2Vec2;
      
      private var §]a§:Number;
      
      private var §[!Y§:Number;
      
      private var §7!X§:Number;
      
      public function b2FrictionJoint(param1:b2FrictionJointDef)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!i§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§?!5§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§=_§ = new b2Mat22();
                  while(true)
                  {
                     this.§%M§ = new b2Vec2();
                     loop3:
                     for(; !(_loc2_ && param1); loop6:
                     for(; _loc3_ || _loc2_; if(!(_loc3_ || this))
                     {
                        continue;
                     },§§goto(addr72))
                     {
                        while(true)
                        {
                           this.§=_§.§%&§();
                           loop8:
                           while(true)
                           {
                              this.§>5§ = 0;
                              while(true)
                              {
                                 this.§%M§.§%&§();
                                 while(_loc3_)
                                 {
                                    this.§]a§ = 0;
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       continue loop8;
                                       addr36:
                                       if(_loc3_ || _loc2_)
                                       {
                                          return;
                                       }
                                    }
                                    continue loop6;
                                    for(; !(_loc2_ && this); this.§7!X§ = param1.maxTorque,if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    },§§goto(addr36))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                              }
                           }
                        }
                     })
                     {
                        super(param1);
                        while(true)
                        {
                           this.§^!i§.SetV(param1.§9!9§);
                           addr134:
                           while(!_loc2_)
                           {
                              this.§?!5§.SetV(param1.§^G§);
                              continue loop3;
                           }
                           addr72:
                           continue loop1;
                           if(!(_loc2_ && _loc3_))
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::^^.GetWorldPoint(this.§^!i§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::7!<.GetWorldPoint(this.§?!5§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc2_ || param1)
         {
            §§push(this.§%M§.x);
            if(!(_loc3_ && param1))
            {
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         addr46:
         §§push(§§pop() * §§pop());
         §§push(param1);
         if(_loc2_)
         {
            addr49:
            §§push(§§pop() * this.§%M§.y);
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
            return §§pop() * this.§]a§;
         }
      }
      
      public function §`n§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[!Y§ = param1;
         }
      }
      
      public function § !#§() : Number
      {
         return this.§[!Y§;
      }
      
      public function §]7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7!X§ = param1;
         }
      }
      
      public function §23§() : Number
      {
         return this.§7!X§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:b2Mat22 = null;
         var _loc15_:b2Vec2 = null;
         _loc4_ = b2internal::^^;
         _loc5_ = b2internal::7!<;
         _loc2_ = _loc4_.m_xf.R;
         if(!(_loc17_ && _loc2_))
         {
            §§push(this.§^!i§);
            if(!_loc17_)
            {
               §§push(§§pop().x);
               if(_loc16_)
               {
                  §§push(_loc4_.m_sweep);
                  if(!(_loc17_ && this))
                  {
                     §§push(§§pop().localCenter);
                     if(!_loc17_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc17_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           if(!_loc17_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc16_)
                              {
                                 _loc6_ = §§pop();
                                 addr97:
                                 §§push(this.§^!i§.y);
                                 if(_loc16_ || _loc3_)
                                 {
                                    addr109:
                                    §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                           }
                           var _loc7_:* = §§pop();
                           if(!(_loc17_ && _loc2_))
                           {
                              §§push(_loc2_.col1);
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr225:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(_loc2_.col2);
                                          addr236:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr237:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr238:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                          }
                                       }
                                       addr234:
                                    }
                                    addr239:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc16_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr243:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr244:
                                          while(true)
                                          {
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr153);
                        }
                     }
                  }
               }
               §§goto(addr109);
            }
         }
         §§goto(addr97);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc4_:b2Body = b2internal::^^;
         var _loc5_:b2Body = b2internal::7!<;
         var _loc6_:b2Vec2 = _loc4_.§9!§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§9!§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§1!X§);
         if(!_loc26_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§1!X§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§^!B§);
         if(_loc27_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§^!B§);
         if(!(_loc26_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§^!i§.x);
         if(_loc27_ || this)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(!_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§^!i§.y);
         if(!(_loc26_ && _loc2_))
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc26_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(!_loc26_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(_loc27_)
               {
                  §§push(_loc14_);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr244:
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        addr246:
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
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr243:
               }
               addr250:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr251:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr252:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr236);
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         return true;
      }
   }
}
