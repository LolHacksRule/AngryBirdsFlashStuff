package §_-gE§
{
   import §_-5§.b2Settings;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §_-02v§:b2SimplexCache;
      
      private static var §_-J8§:b2DistanceInput;
      
      private static var §_-Jj§:b2Transform;
      
      private static var §_-X2§:b2Transform;
      
      private static var §_-rh§:b2SeparationFunction;
      
      private static var §_-08r§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2TimeOfImpact))
         {
            b2_toiCalls = 0;
            loop0:
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
                     loop3:
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        while(true)
                        {
                           §_-02v§ = new b2SimplexCache();
                           continue loop2;
                           addr61:
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           §_-08r§ = new b2DistanceOutput();
                           addr78:
                           if(_loc2_ || b2TimeOfImpact)
                           {
                              addr41:
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr84:
                                 return;
                                 addr84:
                              }
                              loop9:
                              while(!(_loc1_ && _loc2_))
                              {
                                 §_-rh§ = new b2SeparationFunction();
                                 while(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr61);
                                    §§goto(addr78);
                                 }
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          §_-Jj§ = new b2Transform();
                                          break loop9;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                    §§goto(addr54);
                                 }
                                 addr54:
                                 continue loop2;
                                 §§goto(addr41);
                              }
                              continue loop3;
                           }
                           §§goto(addr54);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §_-X2§ = new b2Transform();
            §§goto(addr84);
         }
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §_-e9§(param1:b2TOIInput) : Number
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
         if(!_loc23_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_ || b2TimeOfImpact)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§_-05Z§;
         var _loc3_:b2DistanceProxy = param1.§_-l4§;
         var _loc4_:b2Sweep = param1.§_-04k§;
         var _loc5_:b2Sweep = param1.§_-07c§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§_-RN§ == _loc5_.§_-RN§);
            if(!_loc23_)
            {
               b2Settings.b2Assert(1 - _loc4_.§_-RN§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§_-0CZ§);
         if(!(_loc23_ && _loc3_))
         {
            §§push(§§pop() + _loc3_.§_-0CZ§);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§_-PB§);
         if(!(_loc23_ && b2TimeOfImpact))
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
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(_loc24_)
         {
            §_-02v§.count = 0;
            do
            {
               §_-J8§.§_-029§ = false;
            }
            while(_loc23_);
            
         }
         while(true)
         {
            _loc4_.§_-tg§(§_-Jj§,_loc8_);
            while(true)
            {
               _loc5_.§_-tg§(§_-X2§,_loc8_);
               while(true)
               {
                  §§push(§_-J8§);
                  loop4:
                  while(true)
                  {
                     §§pop().§_-05Z§ = _loc2_;
                     addr1074:
                     while(true)
                     {
                        §§push(§_-J8§);
                        continue loop4;
                     }
                  }
                  if(!(_loc24_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr853);
               }
               if(!(_loc24_ || param1))
               {
                  continue;
               }
               §§push(b2Math);
               §§push(_loc20_);
               if(_loc24_)
               {
                  §§push(§§pop() - _loc11_);
               }
               §§goto(addr359);
               §§push(§§pop().§_-010§(§§pop()));
            }
         }
      }
   }
}
