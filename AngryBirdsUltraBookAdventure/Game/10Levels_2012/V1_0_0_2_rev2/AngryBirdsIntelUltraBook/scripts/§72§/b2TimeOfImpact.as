package §72§
{
   import §7!u§.b2Settings;
   import §>H§.b2Math;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §"8§:b2SimplexCache;
      
      private static var §!!F§:b2DistanceInput;
      
      private static var §0!n§:b2Transform;
      
      private static var §>§:b2Transform;
      
      private static var §<>§:b2SeparationFunction;
      
      private static var §?!p§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
               loop1:
               while(true)
               {
                  b2_toiMaxIters = 0;
                  loop2:
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        while(true)
                        {
                           §"8§ = new b2SimplexCache();
                           continue loop1;
                           addr37:
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                              addr44:
                           }
                        }
                        addr87:
                        if(_loc1_ || _loc2_)
                        {
                           §<>§ = new b2SeparationFunction();
                           loop9:
                           for(; !(_loc2_ && _loc2_); §?!p§ = new b2DistanceOutput(),if(!_loc1_)
                           {
                              continue;
                           },if(_loc2_ && b2TimeOfImpact)
                           {
                              continue loop1;
                           },§§goto(addr37))
                           {
                              addr57:
                              if(_loc1_ || b2TimeOfImpact)
                              {
                                 continue;
                              }
                              addr100:
                              while(true)
                              {
                                 §>§ = new b2Transform();
                                 break loop9;
                                 §§goto(addr57);
                              }
                           }
                           loop8:
                           while(true)
                           {
                              if(!(_loc1_ || b2TimeOfImpact))
                              {
                                 while(_loc1_)
                                 {
                                    §0!n§ = new b2Transform();
                                    §§goto(addr100);
                                    continue loop8;
                                 }
                                 continue loop2;
                                 addr106:
                              }
                              §§goto(addr87);
                           }
                           addr50:
                        }
                     }
                  }
               }
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §!!F§ = new b2DistanceInput();
               §§goto(addr106);
            }
         }
         §§goto(addr44);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §+U§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         if(!(_loc23_ && param1))
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(!(_loc23_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§]!O§;
         var _loc3_:b2DistanceProxy = param1.§&d§;
         var _loc4_:b2Sweep = param1.§'!S§;
         var _loc5_:b2Sweep = param1.§?X§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§3J§ == _loc5_.§3J§);
            if(_loc24_ || b2TimeOfImpact)
            {
               b2Settings.b2Assert(1 - _loc4_.§3J§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§9!A§);
         if(!_loc23_)
         {
            §§push(§§pop() + _loc3_.§9!A§);
            if(_loc24_ || _loc3_)
            {
               addr117:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§0%§);
            if(!(_loc23_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc24_ || b2TimeOfImpact)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(!(_loc23_ && b2TimeOfImpact))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!_loc23_)
            {
               §"8§.count = 0;
            }
            do
            {
               §!!F§.§^1§ = false;
            }
            while(!_loc24_);
            
            while(true)
            {
               _loc4_.§2!0§(§0!n§,_loc8_);
               while(true)
               {
                  _loc5_.§2!0§(§>§,_loc8_);
                  while(true)
                  {
                     §§push(§!!F§);
                     loop4:
                     while(true)
                     {
                        §§pop().§]!O§ = _loc2_;
                        addr1059:
                        while(true)
                        {
                           §§push(§!!F§);
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr117);
      }
   }
}
