package §8w§
{
   import §3!m§.b2Settings;
   import §;%§.b2Math;
   import §;%§.b2Sweep;
   import §;%§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §!!L§:b2SimplexCache;
      
      private static var §]!w§:b2DistanceInput;
      
      private static var §"y§:b2Transform;
      
      private static var § U§:b2Transform;
      
      private static var §1!7§:b2SeparationFunction;
      
      private static var §9!X§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2TimeOfImpact)
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
               addr143:
               while(true)
               {
                  b2_toiMaxIters = 0;
               }
            }
            addr147:
         }
         while(true)
         {
            b2_toiRootIters = 0;
            while(true)
            {
               b2_toiMaxRootIters = 0;
               loop4:
               while(true)
               {
                  §!!L§ = new b2SimplexCache();
                  do
                  {
                     §]!w§ = new b2DistanceInput();
                     continue loop4;
                  }
                  while(_loc2_ && _loc1_);
                  
                  return;
               }
            }
         }
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §^$§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         if(_loc23_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(!(_loc24_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_ || _loc2_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§9!;§;
         var _loc3_:b2DistanceProxy = param1.§ !%§;
         var _loc4_:b2Sweep = param1.§"!L§;
         var _loc5_:b2Sweep = param1.§'!5§;
         if(_loc23_)
         {
            b2Settings.b2Assert(_loc4_.§!%§ == _loc5_.§!%§);
            if(_loc23_ || _loc2_)
            {
               addr93:
               b2Settings.b2Assert(1 - _loc4_.§!%§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§?!X§);
            if(!(_loc24_ && b2TimeOfImpact))
            {
               §§push(§§pop() + _loc3_.§?!X§);
               if(_loc23_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.§@M§);
            if(_loc23_ || b2TimeOfImpact)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!(_loc24_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(!(_loc24_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc24_ && param1))
            {
               §!!L§.count = 0;
               do
               {
                  §]!w§.§5!=§ = false;
               }
               while(!_loc23_);
               
            }
            while(true)
            {
               _loc4_.§7§(§"y§,_loc8_);
               while(true)
               {
                  _loc5_.§7§(§ U§,_loc8_);
                  loop3:
                  while(_loc23_ || param1)
                  {
                     §§push(§]!w§);
                     while(true)
                     {
                        §§pop().§9!;§ = _loc2_;
                        while(true)
                        {
                           §§push(§]!w§);
                           loop6:
                           while(true)
                           {
                              §§pop().§ !%§ = _loc3_;
                              addr1024:
                              while(_loc23_)
                              {
                                 §§push(§]!w§);
                                 continue loop6;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
   }
}
