package §-"&§
{
   import §"y§.b2Shape;
   import §'F§.*;
   import §3!`§.*;
   import §6Z§.*;
   import §^9§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §0!M§:b2WorldManifold;
      
      private static var §"!s§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!M§ = new b2WorldManifold();
         }
         do
         {
            §"!s§ = new b2PositionSolverManifold();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §[!u§:b2TimeStep;
      
      private var §]"#§;
      
      b2internal var §]!I§:Vector.<b2ContactConstraint>;
      
      private var §,!8§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[!u§ = new b2TimeStep();
            do
            {
               this.§]!I§ = new Vector.<b2ContactConstraint>();
               do
               {
                  super();
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §",§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         loop0:
         while(_loc5_ < this.§,!8§)
         {
            _loc7_ = (_loc6_ = this.§]!I§[_loc5_]).§'!n§;
            _loc8_ = _loc6_.§ 5§;
            if(_loc25_ || _loc3_)
            {
               §§push(_loc7_.§4!&§);
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     while(true)
                     {
                        §§push(_loc7_.§`!`§);
                        if(!(_loc24_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           _loc10_ = §§pop();
                           if(!(_loc24_ && param1))
                           {
                              §§push(_loc8_.§4!&§);
                              if(_loc25_ || _loc3_)
                              {
                                 if(_loc24_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              while(true)
                              {
                                 _loc11_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc8_.§`!`§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc12_ = §§pop();
                                          if(!(_loc24_ && this))
                                          {
                                             if(_loc24_ && _loc3_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(_loc6_.normal);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr216:
                                                while(_loc25_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(_loc25_)
                                                   {
                                                      _loc13_ = §§pop();
                                                      continue loop9;
                                                      if(!(_loc24_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop7;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          break;
                                       }
                                       addr795:
                                       _loc5_++;
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           §§goto(addr724);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            §§goto(addr740);
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
      
      public function §2"%§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,!8§)
         {
            _loc2_ = this.§]!I§[_loc1_];
            _loc3_ = _loc2_.§@!o§;
            if(_loc7_)
            {
               §§push(0);
               if(_loc7_)
               {
                  _loc4_ = §§pop();
                  if(_loc8_ && _loc1_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr108:
               }
               loop2:
               for(; §§pop() < _loc2_.§>!%§; §§goto(addr108))
               {
                  _loc5_ = _loc3_.§"A§[_loc4_];
                  _loc6_ = _loc2_.§=i§[_loc4_];
                  if(_loc7_)
                  {
                     _loc5_.§4!p§ = _loc6_.normalImpulse;
                  }
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        _loc5_.§#!h§ = _loc6_.tangentImpulse;
                        while(_loc7_)
                        {
                           _loc4_++;
                           if(!(_loc8_ && _loc1_))
                           {
                              if(true)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            _loc1_++;
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
