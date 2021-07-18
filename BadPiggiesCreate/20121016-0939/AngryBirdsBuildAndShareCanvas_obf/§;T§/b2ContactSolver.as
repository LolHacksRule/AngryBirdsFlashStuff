package §;T§
{
   import §"!9§.b2Shape;
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §5O§:b2WorldManifold;
      
      private static var §[![§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §5O§ = new b2WorldManifold();
            do
            {
               §[![§ = new b2PositionSolverManifold();
            }
            while(!_loc2_);
            
         }
      }
      
      private var §2N§:b2TimeStep;
      
      private var §=!6§;
      
      b2internal var §#I§:Vector.<b2ContactConstraint>;
      
      private var §[!N§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2N§ = new b2TimeStep();
            while(true)
            {
               this.§#I§ = new Vector.<b2ContactConstraint>();
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            super();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §1o§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         while(_loc5_ < this.§[!N§)
         {
            _loc7_ = (_loc6_ = this.§#I§[_loc5_]).§@!<§;
            _loc8_ = _loc6_.§3j§;
            if(!_loc24_)
            {
               §§push(_loc7_.§;k§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr284:
                  do
                  {
                     _loc9_ = §§pop();
                  }
                  while(_loc25_ || _loc3_);
                  
                  addr800:
                  _loc5_++;
                  continue loop0;
                  loop13:
                  while(true)
                  {
                     if(_loc25_ || param1)
                     {
                        §§push(Number(§§pop()));
                        loop14:
                        while(true)
                        {
                           _loc13_ = §§pop();
                           if(!(_loc25_ || param1))
                           {
                              break;
                           }
                           §§push(_loc6_.normal);
                           if(_loc25_)
                           {
                              §§push(§§pop().y);
                              if(_loc25_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop15:
                              while(true)
                              {
                                 §§push(_loc14_ = §§pop());
                                 while(true)
                                 {
                                    if(_loc24_)
                                    {
                                       continue loop14;
                                    }
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       if(_loc25_)
                                       {
                                          addr213:
                                          if(_loc25_ || _loc3_)
                                          {
                                             addr220:
                                             if(_loc25_ || _loc2_)
                                             {
                                                _loc15_ = §§pop();
                                                if(!(_loc25_ || this))
                                                {
                                                   break;
                                                }
                                                §§push(_loc13_);
                                                if(_loc25_ || param1)
                                                {
                                                   continue;
                                                }
                                                continue loop15;
                                             }
                                             addr278:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr279:
                                                while(true)
                                                {
                                                   _loc10_ = §§pop();
                                                   addr280:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§;k§);
                                                   }
                                                }
                                                §§goto(addr220);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr271:
                                             while(true)
                                             {
                                                _loc11_ = §§pop();
                                                if(!_loc24_)
                                                {
                                                   §§push(_loc8_.§6x§);
                                                   break loop15;
                                                }
                                                break;
                                             }
                                             §§goto(addr800);
                                             §§goto(addr213);
                                          }
                                       }
                                       addr265:
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          addr266:
                                          while(true)
                                          {
                                             §§push(_loc6_.normal);
                                          }
                                       }
                                    }
                                    addr780:
                                    if(_loc18_ < _loc19_)
                                    {
                                       (_loc23_ = _loc6_.§>"%§[_loc18_]).normalImpulse = 0;
                                       if(!_loc24_)
                                       {
                                          _loc23_.tangentImpulse = 0;
                                          if(!(_loc24_ && this))
                                          {
                                             addr779:
                                             _loc18_++;
                                          }
                                          §§goto(addr780);
                                       }
                                       §§goto(addr779);
                                    }
                                    if(_loc24_ && _loc3_)
                                    {
                                       break loop14;
                                    }
                                    §§goto(addr800);
                                 }
                                 continue loop13;
                              }
                              while(!_loc24_)
                              {
                                 if(!_loc24_)
                                 {
                                    §§goto(addr265);
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    §§goto(addr279);
                                 }
                              }
                              §§goto(addr271);
                           }
                           while(true)
                           {
                              continue loop13;
                              §§goto(addr256);
                           }
                           addr256:
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr284);
               }
            }
            while(true)
            {
               §§goto(addr278);
            }
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
      
      public function §8"§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§[!N§)
         {
            _loc2_ = this.§#I§[_loc1_];
            _loc3_ = _loc2_.§implements§;
            if(!(_loc7_ && _loc1_))
            {
               §§push(0);
               if(!(_loc7_ && this))
               {
                  _loc4_ = §§pop();
                  if(_loc8_ || _loc3_)
                  {
                     addr78:
                     loop5:
                     while(true)
                     {
                        §§push(_loc4_);
                        addr120:
                        while(§§pop() < _loc2_.§<"5§)
                        {
                           _loc5_ = _loc3_.§5!'§[_loc4_];
                           _loc6_ = _loc2_.§>"%§[_loc4_];
                           if(!_loc7_)
                           {
                              _loc5_.§=!y§ = _loc6_.normalImpulse;
                           }
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 _loc5_.§%!B§ = _loc6_.tangentImpulse;
                                 while(_loc8_)
                                 {
                                    _loc4_++;
                                    if(_loc8_ || _loc1_)
                                    {
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop5;
                           }
                           continue loop5;
                        }
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  _loc1_++;
                  continue;
               }
               §§goto(addr120);
            }
            §§goto(addr78);
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
