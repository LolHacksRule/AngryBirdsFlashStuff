package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §^r§:b2WorldManifold;
      
      private static var §[D§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2ContactSolver))
         {
            §^r§ = new b2WorldManifold();
         }
         do
         {
            §[D§ = new b2PositionSolverManifold();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §+!0§:b2TimeStep;
      
      private var §"!7§;
      
      b2internal var §#!$§:Vector.<b2ContactConstraint>;
      
      private var §=!3§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+!0§ = new b2TimeStep();
         }
         while(true)
         {
            this.§#!$§ = new Vector.<b2ContactConstraint>();
            while(_loc1_ || _loc2_)
            {
               super();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`!r§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc2_:b2Vec2 = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Mat22 = null;
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.§=!3§)
         {
            _loc7_ = (_loc6_ = this.§#!$§[_loc5_]).§!!v§;
            _loc8_ = _loc6_.§'!4§;
            if(_loc24_)
            {
               §§push(_loc7_.§["A§);
               if(!(_loc25_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               while(true)
               {
                  _loc9_ = §§pop();
                  while(true)
                  {
                     §§push(_loc7_.§"g§);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc10_ = §§pop();
                           while(true)
                           {
                              §§push(_loc8_.§["A§);
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr275:
                                 while(true)
                                 {
                                    _loc11_ = §§pop();
                                    if(_loc25_)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_.§"g§);
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        while(_loc24_ || this)
                        {
                           §§goto(addr240);
                           §§push(Number(§§pop()));
                        }
                     }
                  }
               }
            }
            §§goto(addr834);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §;%§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=!3§)
         {
            _loc2_ = this.§#!$§[_loc1_];
            _loc3_ = _loc2_.§;!N§;
            if(_loc8_ || this)
            {
               §§push(0);
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(!_loc8_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr129:
               }
               loop2:
               for(; §§pop() < _loc2_.§<?§; §§goto(addr129))
               {
                  _loc5_ = _loc3_.§1!d§[_loc4_];
                  _loc6_ = _loc2_.§+V§[_loc4_];
                  if(!(_loc7_ && this))
                  {
                     _loc5_.§[!h§ = _loc6_.normalImpulse;
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           _loc5_.§%!7§ = _loc6_.tangentImpulse;
                           do
                           {
                              _loc4_++;
                           }
                           while(_loc7_ && _loc2_);
                           
                           if(!(_loc8_ || _loc1_))
                           {
                              break;
                              addr116:
                           }
                           while(false)
                           {
                              continue loop4;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr116);
               }
               if(_loc8_ || _loc3_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc24_:Boolean = true;
         var _loc25_:Boolean = false;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         §§push(0);
         if(!(_loc25_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(_loc3_ < this.§=!3§)
         {
            _loc5_ = (_loc4_ = this.§#!$§[_loc3_]).§!!v§;
            _loc6_ = _loc4_.§'!4§;
            if(_loc24_)
            {
               §§push(_loc5_.§+J§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§["A§);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           while(true)
                           {
                              §§push(_loc5_.§+J§);
                              if(_loc24_)
                              {
                                 §§push(_loc5_.§"g§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr193:
                              }
                              loop7:
                              while(_loc24_)
                              {
                                 §§push(Number(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    addr198:
                                    while(true)
                                    {
                                       §§push(_loc6_.§+J§);
                                       loop10:
                                       for(; _loc24_; if(_loc24_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop8;
                                       })
                                       {
                                          §§push(_loc6_.§["A§);
                                          while(_loc24_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop13:
                                                while(!_loc25_)
                                                {
                                                   if(_loc25_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   _loc9_ = §§pop();
                                                   while(true)
                                                   {
                                                      addr108:
                                                      while(true)
                                                      {
                                                         §§push(_loc6_.§+J§);
                                                         if(!_loc25_)
                                                         {
                                                            if(_loc24_ || _loc3_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            continue loop13;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr168);
         }
         §§push(_loc2_);
         §§push(-1.5);
         if(!_loc25_)
         {
            §§push(§§pop() * b2Settings.b2_linearSlop);
         }
         return §§pop() > §§pop();
      }
   }
}
