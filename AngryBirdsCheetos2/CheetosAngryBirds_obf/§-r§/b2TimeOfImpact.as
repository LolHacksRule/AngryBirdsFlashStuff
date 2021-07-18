package §-r§
{
   import §"0§.b2Settings;
   import §6!H§.b2Math;
   import §6!H§.b2Sweep;
   import §6!H§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §;!W§:b2SimplexCache;
      
      private static var §1M§:b2DistanceInput;
      
      private static var §0!Y§:b2Transform;
      
      private static var §`_§:b2Transform;
      
      private static var § !@§:b2SeparationFunction;
      
      private static var §8!+§:b2DistanceOutput;
      
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
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     while(!(_loc2_ && _loc2_))
                     {
                        b2_toiMaxRootIters = 0;
                        while(true)
                        {
                           §;!W§ = new b2SimplexCache();
                           continue loop1;
                        }
                        if(_loc1_ || _loc2_)
                        {
                           return;
                           addr58:
                        }
                     }
                  }
               }
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr78);
            }
         }
         §§goto(addr58);
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
      
      public static function §92§(param1:b2TOIInput) : Number
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
         if(!(_loc23_ && _loc3_))
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§-C§;
         var _loc3_:b2DistanceProxy = param1.§%!J§;
         var _loc4_:b2Sweep = param1.§;U§;
         var _loc5_:b2Sweep = param1.§<`§;
         if(_loc24_ || param1)
         {
            b2Settings.b2Assert(_loc4_.§^Q§ == _loc5_.§^Q§);
            if(!_loc23_)
            {
               addr89:
               b2Settings.b2Assert(1 - _loc4_.§^Q§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§#&§);
            if(_loc24_ || param1)
            {
               §§push(§§pop() + _loc3_.§#&§);
               if(!(_loc23_ && _loc3_))
               {
                  addr117:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§,!6§);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!(_loc23_ && b2TimeOfImpact))
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               var _loc9_:int = 1000;
               var _loc10_:int = 0;
               §§push(0);
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               if(_loc24_ || _loc2_)
               {
                  §;!W§.count = 0;
               }
               do
               {
                  §1M§.§"_§ = false;
               }
               while(_loc23_ && param1);
               
               while(true)
               {
                  _loc4_.§2!i§(§0!Y§,_loc8_);
                  while(true)
                  {
                     _loc5_.§2!i§(§`_§,_loc8_);
                     while(true)
                     {
                        §§push(§1M§);
                        while(true)
                        {
                           §§pop().§-C§ = _loc2_;
                           while(true)
                           {
                              §§push(§1M§);
                              loop6:
                              while(true)
                              {
                                 §§pop().§%!J§ = _loc3_;
                                 addr1029:
                                 while(true)
                                 {
                                    §§push(§1M§);
                                    while(true)
                                    {
                                       §§pop().§'1§ = §0!Y§;
                                       addr1024:
                                       while(true)
                                       {
                                          §§push(§1M§);
                                          if(_loc23_)
                                          {
                                             break;
                                          }
                                          continue loop6;
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
            §§goto(addr117);
         }
         §§goto(addr89);
      }
   }
}
