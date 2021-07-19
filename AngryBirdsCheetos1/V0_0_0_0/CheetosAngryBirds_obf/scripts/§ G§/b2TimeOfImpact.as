package § G§
{
   import §9"§.b2Math;
   import §9"§.b2Sweep;
   import §9"§.b2Transform;
   import §>!@§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §?!9§:b2SimplexCache;
      
      private static var §%v§:b2DistanceInput;
      
      private static var §6+§:b2Transform;
      
      private static var §=3§:b2Transform;
      
      private static var §@P§:b2SeparationFunction;
      
      private static var §4!K§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
               loop1:
               for(; !(_loc1_ && b2TimeOfImpact); if(!(_loc2_ || _loc2_))
               {
                  continue;
               },§?!9§ = new b2SimplexCache(),loop5:
               while(true)
               {
                  §%v§ = new b2DistanceInput();
                  loop6:
                  while(true)
                  {
                     §6+§ = new b2Transform();
                     loop7:
                     while(!_loc1_)
                     {
                        §=3§ = new b2Transform();
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §@P§ = new b2SeparationFunction();
                                 while(_loc2_)
                                 {
                                    §4!K§ = new b2DistanceOutput();
                                    if(_loc1_ && b2TimeOfImpact)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       break loop5;
                                    }
                                    §§goto(addr117);
                                 }
                                 continue;
                              }
                              continue loop6;
                           }
                           continue loop7;
                        }
                        continue loop5;
                     }
                     §§goto(addr93);
                  }
               },return,addr88:)
               {
                  b2_toiMaxIters = 0;
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        addr93:
                        while(!(_loc1_ && _loc1_))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §=J§(param1:b2TOIInput) : Number
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
         if(!_loc24_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(!_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_ || _loc3_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§;!?§;
         var _loc3_:b2DistanceProxy = param1.§&z§;
         var _loc4_:b2Sweep = param1.§<T§;
         var _loc5_:b2Sweep = param1.§^Y§;
         if(!(_loc24_ && b2TimeOfImpact))
         {
            b2Settings.b2Assert(_loc4_.§2g§ == _loc5_.§2g§);
            if(_loc23_)
            {
               b2Settings.b2Assert(1 - _loc4_.§2g§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§=!W§);
         if(_loc23_ || _loc3_)
         {
            §§push(§§pop() + _loc3_.§=!W§);
            if(_loc23_ || param1)
            {
               addr116:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§]U§);
            if(!_loc24_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!(_loc24_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(!(_loc24_ && b2TimeOfImpact))
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc24_ && param1))
            {
               §?!9§.count = 0;
               do
               {
                  §%v§.§0V§ = false;
               }
               while(!_loc23_);
               
            }
            while(true)
            {
               _loc4_.§>B§(§6+§,_loc8_);
               while(true)
               {
                  _loc5_.§>B§(§=3§,_loc8_);
                  while(true)
                  {
                     §§push(§%v§);
                     loop4:
                     while(true)
                     {
                        §§pop().§;!?§ = _loc2_;
                        if(_loc24_ && b2TimeOfImpact)
                        {
                           break;
                        }
                        §§push(§%v§);
                        while(true)
                        {
                           §§pop().§&z§ = _loc3_;
                           addr1016:
                           while(true)
                           {
                              §§push(§%v§);
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr1210);
                     if(_loc24_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr1210);
                  }
               }
            }
         }
         §§goto(addr116);
      }
   }
}
