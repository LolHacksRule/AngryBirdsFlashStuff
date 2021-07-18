package §!4§
{
   import §6A§.b2Math;
   import §6A§.b2Sweep;
   import §6A§.b2Transform;
   import §^P§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §"x§:b2SimplexCache;
      
      private static var §9t§:b2DistanceInput;
      
      private static var §>r§:b2Transform;
      
      private static var §"!§:b2Transform;
      
      private static var §3p§:b2SeparationFunction;
      
      private static var §,!4§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
         loop2:
         while(true)
         {
            b2_toiRootIters = 0;
            loop3:
            for(; _loc1_; while(!(_loc2_ && _loc2_))
            {
               §9t§ = new b2DistanceInput();
               §§goto(addr98);
            })
            {
               b2_toiMaxRootIters = 0;
               while(true)
               {
                  §"x§ = new b2SimplexCache();
                  continue loop3;
                  addr85:
                  if(!(_loc2_ && _loc2_))
                  {
                     §"!§ = new b2Transform();
                     loop8:
                     while(!_loc2_)
                     {
                        §3p§ = new b2SeparationFunction();
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop8;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
            §§goto(addr143);
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
      
      public static function §=!I§(param1:b2TOIInput) : Number
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
         if(_loc24_ || _loc3_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc24_ || _loc2_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§package§;
         var _loc3_:b2DistanceProxy = param1.§@!?§;
         var _loc4_:b2Sweep = param1.static;
         var _loc5_:b2Sweep = param1.§!W§;
         if(_loc24_ || param1)
         {
            b2Settings.b2Assert(_loc4_.§#z§ == _loc5_.§#z§);
            if(!_loc23_)
            {
               b2Settings.b2Assert(1 - _loc4_.§#z§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§'m§);
         if(!(_loc23_ && param1))
         {
            §§push(§§pop() + _loc3_.§'m§);
            if(_loc24_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§%!&§);
         if(_loc24_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         var _loc9_:int = 1000;
         var _loc10_:int = 0;
         §§push(0);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(!_loc23_)
         {
            §"x§.count = 0;
         }
         do
         {
            §9t§.§-!=§ = false;
         }
         while(!_loc24_);
         
         while(true)
         {
            _loc4_.§6V§(§>r§,_loc8_);
            while(true)
            {
               _loc5_.§6V§(§"!§,_loc8_);
               while(true)
               {
                  §§push(§9t§);
                  while(true)
                  {
                     §§pop().§package§ = _loc2_;
                     while(true)
                     {
                        §§push(§9t§);
                        loop6:
                        while(true)
                        {
                           §§pop().§@!?§ = _loc3_;
                           addr1024:
                           while(true)
                           {
                              §§push(§9t§);
                              continue loop6;
                           }
                        }
                     }
                  }
                  if(!(_loc24_ || b2TimeOfImpact))
                  {
                     continue;
                  }
                  §§goto(addr675);
               }
            }
         }
      }
   }
}
