package §8Y§
{
   import §&U§.b2Shape;
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §9^§:b2WorldManifold;
      
      private static var §4w§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9^§ = new b2WorldManifold();
         }
         do
         {
            §4w§ = new b2PositionSolverManifold();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §>X§:b2TimeStep;
      
      private var §,]§;
      
      b2internal var §<w§:Vector.<b2ContactConstraint>;
      
      private var §3!O§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§>X§ = new b2TimeStep();
            while(true)
            {
               this.§<w§ = new Vector.<b2ContactConstraint>();
               while(!_loc1_)
               {
                  super();
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §>b§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
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
         var _loc18_:* = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§3!O§)
         {
            _loc7_ = (_loc6_ = this.§<w§[_loc5_]).§8!5§;
            _loc8_ = _loc6_.§0n§;
            if(_loc25_)
            {
               §§push(_loc7_.§#!D§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  while(true)
                  {
                     _loc9_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_.§?8§);
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr266:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              addr267:
                              while(true)
                              {
                                 §§push(_loc8_.§#!D§);
                                 addr252:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr253:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       if(!(_loc24_ && this))
                                       {
                                          §§push(_loc8_.§?8§);
                                          continue loop4;
                                       }
                                       addr817:
                                       addr770:
                                       §§push(0);
                                       if(!(_loc24_ && this))
                                       {
                                          addr778:
                                          _loc18_ = §§pop();
                                          if(!_loc25_)
                                          {
                                             continue loop0;
                                          }
                                          addr805:
                                          §§push(_loc18_);
                                       }
                                       if(§§pop() < _loc19_)
                                       {
                                          (_loc23_ = _loc6_.§5n§[_loc18_]).normalImpulse = 0;
                                          if(_loc25_ || _loc3_)
                                          {
                                             _loc23_.tangentImpulse = 0;
                                             if(_loc25_)
                                             {
                                                addr804:
                                                _loc18_++;
                                             }
                                             §§goto(addr805);
                                          }
                                          §§goto(addr804);
                                       }
                                       if(_loc24_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr820);
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §+!U§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!O§)
         {
            _loc2_ = this.§<w§[_loc1_];
            _loc3_ = _loc2_.§%c§;
            if(!_loc7_)
            {
               §§push(0);
               if(_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr109:
               }
               while(§§pop() < _loc2_.§`5§)
               {
                  _loc5_ = _loc3_.§<s§[_loc4_];
                  _loc6_ = _loc2_.§5n§[_loc4_];
                  if(_loc8_)
                  {
                     _loc5_.§46§ = _loc6_.normalImpulse;
                     loop3:
                     while(true)
                     {
                        addr98:
                        while(true)
                        {
                           _loc5_.§`!H§ = _loc6_.tangentImpulse;
                           continue loop3;
                        }
                     }
                     addr108:
                  }
                  while(true)
                  {
                     _loc4_++;
                     if(_loc7_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc8_ || _loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr108);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr109);
               }
               if(_loc8_ || _loc2_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
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
