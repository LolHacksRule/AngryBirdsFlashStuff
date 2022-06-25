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
   
   public class b2WeldJoint extends b2Joint
   {
       
      
      private var §=!&§:b2Vec2;
      
      private var §6d§:b2Vec2;
      
      private var §0!$§:Number;
      
      private var §<<§:b2Vec3;
      
      private var § ,§:b2Mat33;
      
      public function b2WeldJoint(param1:b2WeldJointDef)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§6d§ = new b2Vec2();
               while(true)
               {
                  this.§<<§ = new b2Vec3();
                  while(true)
                  {
                     this.§ ,§ = new b2Mat33();
                     while(_loc2_)
                     {
                        super(param1);
                        if(!(_loc3_ && param1))
                        {
                           return;
                           addr42:
                        }
                     }
                  }
                  loop6:
                  for(; _loc2_ || param1; if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  },if(!_loc3_)
                  {
                     §§goto(addr73);
                  },§§goto(addr124))
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     this.§0!$§ = param1.§<?§;
                     loop7:
                     while(_loc2_ || this)
                     {
                        this.§<<§.§&!K§();
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop6;
                           }
                           continue loop7;
                           addr73:
                           this.§ ,§ = new b2Mat33();
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           §§goto(addr35);
                        }
                        while(true)
                        {
                           this.§=!&§.SetV(param1.§4!%§);
                           break loop7;
                        }
                        §§goto(addr42);
                     }
                     while(true)
                     {
                        this.§6d§.SetV(param1.§=!I§);
                        continue loop6;
                        §§goto(addr79);
                     }
                     addr79:
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::>0.GetWorldPoint(this.§=!&§);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::[=.GetWorldPoint(this.§6d§);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1);
         if(_loc3_)
         {
            §§push(this.§<<§.x);
            if(_loc3_)
            {
               addr37:
               §§push(§§pop() * §§pop());
               §§push(param1);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() * this.§<<§.y);
               }
            }
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr37);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(!_loc2_)
         {
            return §§pop() * this.§<<§.z;
         }
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Mat22 = null;
         var _loc3_:Number = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         _loc4_ = b2internal::>0;
         _loc5_ = b2internal::[=;
         _loc2_ = _loc4_.m_xf.R;
         if(!_loc15_)
         {
            §§push(this.§=!&§);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr227:
               while(true)
               {
                  §§push(_loc4_.m_sweep);
                  addr229:
                  while(true)
                  {
                     §§push(§§pop().localCenter);
                     addr230:
                     while(true)
                     {
                        §§push(§§pop().x);
                        addr231:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           addr232:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr233:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = true;
         var _loc2_:b2Mat22 = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = b2internal::>0;
         var _loc5_:b2Body = b2internal::[=;
         var _loc6_:b2Vec2 = _loc4_.§%!V§;
         §§push(_loc4_.m_angularVelocity);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:b2Vec2 = _loc5_.§%!V§;
         §§push(_loc5_.m_angularVelocity);
         if(_loc23_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§-7§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(_loc5_.§-7§);
         if(_loc23_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         §§push(_loc4_.§,!o§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc12_:* = §§pop();
         §§push(_loc5_.§,!o§);
         if(!_loc22_)
         {
            §§push(Number(§§pop()));
         }
         var _loc13_:* = §§pop();
         _loc2_ = _loc4_.m_xf.R;
         §§push(this.§=!&§.x);
         if(_loc23_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.x);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc14_:* = §§pop();
         §§push(this.§=!&§.y);
         if(_loc23_)
         {
            §§push(§§pop() - _loc4_.m_sweep.localCenter.y);
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc15_:* = §§pop();
         if(_loc23_)
         {
            §§push(_loc2_.col1);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               addr209:
               while(true)
               {
                  §§push(_loc14_);
                  if(!_loc22_)
                  {
                     §§push(§§pop() * §§pop());
                     while(true)
                     {
                        §§push(_loc2_.col2);
                        addr215:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc23_)
                           {
                              while(true)
                              {
                                 §§push(_loc15_);
                                 addr219:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              addr218:
                           }
                           addr220:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc22_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr224:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr225:
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     addr213:
                  }
                  §§goto(addr218);
               }
            }
         }
         §§goto(addr225);
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
