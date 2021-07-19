package §=0§
{
   import §!4§.*;
   import §3!R§.*;
   import §6A§.*;
   import §7q§.b2Shape;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var §#!;§:b2WorldManifold;
      
      private static var §-!K§:b2PositionSolverManifold;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2ContactSolver)
         {
            §#!;§ = new b2WorldManifold();
         }
         do
         {
            §-!K§ = new b2PositionSolverManifold();
         }
         while(_loc2_);
         
      }
      
      private var §9!+§:b2TimeStep;
      
      private var §[!<§;
      
      b2internal var §^i§:Vector.<b2ContactConstraint>;
      
      private var §@!%§:int;
      
      public function b2ContactSolver()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!+§ = new b2TimeStep();
            while(true)
            {
               this.§^i§ = new Vector.<b2ContactConstraint>();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     super();
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §';§(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
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
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
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
         while(_loc5_ < this.§@!%§)
         {
            _loc7_ = (_loc6_ = this.§^i§[_loc5_]).§&]§;
            _loc8_ = _loc6_.§+0§;
            if(_loc24_)
            {
               §§push(_loc7_.§",§);
               loop1:
               while(true)
               {
                  §§push(Number(§§pop()));
                  addr290:
                  while(true)
                  {
                     _loc9_ = §§pop();
                     addr291:
                     while(true)
                     {
                        §§push(_loc7_.§-2§);
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr728);
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
      
      public function §9x§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:* = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§@!%§)
         {
            _loc2_ = this.§^i§[_loc1_];
            _loc3_ = _loc2_.§5!K§;
            if(!(_loc8_ && _loc1_))
            {
               §§push(0);
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc4_);
                     }
                     addr118:
                  }
                  addr139:
                  _loc1_++;
                  continue;
               }
               loop2:
               for(; §§pop() < _loc2_.§7O§; §§goto(addr118))
               {
                  _loc5_ = _loc3_.§7! §[_loc4_];
                  _loc6_ = _loc2_.§-a§[_loc4_];
                  if(!(_loc8_ && this))
                  {
                     _loc5_.§#!f§ = _loc6_.normalImpulse;
                  }
                  while(true)
                  {
                     while(true)
                     {
                        _loc5_.§`!W§ = _loc6_.tangentImpulse;
                        do
                        {
                           _loc4_++;
                        }
                        while(_loc8_ && this);
                        
                        if(_loc8_ && this)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue;
                        }
                        continue loop2;
                     }
                  }
               }
               if(!(_loc7_ || _loc3_))
               {
                  continue;
               }
            }
            §§goto(addr139);
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
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
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
         if(_loc24_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:int = 0;
         while(_loc3_ < this.§@!%§)
         {
            _loc5_ = (_loc4_ = this.§^i§[_loc3_]).§&]§;
            _loc6_ = _loc4_.§+0§;
            if(_loc24_)
            {
               §§push(_loc5_.§`!6§);
               loop1:
               while(true)
               {
                  §§push(_loc5_.§",§);
                  addr218:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr219:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr220:
                        while(true)
                        {
                           _loc7_ = §§pop();
                           addr221:
                           while(true)
                           {
                              §§push(_loc5_.§`!6§);
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr193);
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
