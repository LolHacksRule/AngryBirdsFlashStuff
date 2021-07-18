package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §4!$§.b2Shape;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §["Y§:b2WorldManifold;
      
      private static var §<!J§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §["Y§ = new b2WorldManifold();
            do
            {
               §<!J§ = new b2PositionSolverManifold();
            }
            while(_loc1_);
            
         }
      }
      
      private var §"W§:b2TimeStep;
      
      private var §+!z§;
      
      b2internal var §[#@§:Vector.<b2ContactConstraint>;
      
      private var §>"3§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"W§ = new b2TimeStep();
            while(true)
            {
               this.§[#@§ = new Vector.<b2ContactConstraint>();
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(true)
                  {
                     super();
                     if(_loc1_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §8#5§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < this.§>"3§)
         {
            _loc7_ = (_loc6_ = this.§[#@§[_loc5_]).§9"P§;
            _loc8_ = _loc6_.§continue§;
            if(!(_loc25_ && param1))
            {
               §§push(_loc7_.§3#>§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc7_.§3"y§);
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              _loc10_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc8_.§3#>§);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop8:
                                    while(true)
                                    {
                                       _loc11_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc8_.§3"y§);
                                          loop10:
                                          for(; _loc24_; if(!(_loc24_ || _loc3_))
                                          {
                                             continue;
                                          },_loc15_ = §§pop(),§§goto(addr208))
                                          {
                                             §§push(Number(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                _loc12_ = §§pop();
                                                loop12:
                                                while(_loc24_ || _loc3_)
                                                {
                                                   §§push(_loc6_.normal);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().x);
                                                      addr215:
                                                      while(_loc24_ || param1)
                                                      {
                                                         if(!_loc25_)
                                                         {
                                                            if(_loc24_ || _loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop8;
                                                      addr244:
                                                      §§push(_loc6_.normal);
                                                      if(_loc25_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc25_ && _loc2_))
                                                         {
                                                            §§push(_loc14_ = §§pop());
                                                            if(_loc24_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         addr193:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(!(_loc25_ && param1))
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr239:
                                                            addr789:
                                                            while(true)
                                                            {
                                                               _loc13_ = §§pop();
                                                               if(!_loc24_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc24_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§goto(addr244);
                                                               continue loop17;
                                                            }
                                                            _loc5_++;
                                                            continue loop0;
                                                         }
                                                         continue loop10;
                                                         addr153:
                                                         if(!(_loc25_ && param1))
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop4;
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
            §§goto(addr739);
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
      
      public function §4"J§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§>"3§)
         {
            _loc2_ = this.§[#@§[_loc1_];
            _loc3_ = _loc2_.§#j§;
            if(!(_loc7_ && _loc3_))
            {
               §§push(0);
               if(!_loc7_)
               {
                  _loc4_ = §§pop();
                  if(!(_loc8_ || _loc2_))
                  {
                     continue;
                  }
                  addr73:
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr114:
               }
               loop1:
               for(; §§pop() < _loc2_.§6!c§; §§goto(addr114))
               {
                  _loc5_ = _loc3_.§="8§[_loc4_];
                  _loc6_ = _loc2_.§9"`§[_loc4_];
                  if(!_loc7_)
                  {
                     _loc5_.§,#?§ = _loc6_.normalImpulse;
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           _loc5_.§!#a§ = _loc6_.tangentImpulse;
                           do
                           {
                              _loc4_++;
                           }
                           while(!_loc8_);
                           
                           if(!(_loc8_ || _loc3_))
                           {
                              break;
                              addr101:
                           }
                           while(false)
                           {
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr101);
               }
               if(_loc8_ || this)
               {
                  _loc1_++;
               }
               continue;
            }
            §§goto(addr73);
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
