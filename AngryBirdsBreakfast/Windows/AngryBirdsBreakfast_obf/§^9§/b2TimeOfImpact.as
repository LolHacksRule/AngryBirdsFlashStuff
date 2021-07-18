package §^9§
{
   import §'F§.b2Settings;
   import §6Z§.b2Math;
   import §6Z§.b2Sweep;
   import §6Z§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §8!v§:b2SimplexCache;
      
      private static var §0"-§:b2DistanceInput;
      
      private static var §@b§:b2Transform;
      
      private static var §1!i§:b2Transform;
      
      private static var §!!"§:b2SeparationFunction;
      
      private static var §0!]§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
                        loop4:
                        while(true)
                        {
                           §8!v§ = new b2SimplexCache();
                           loop5:
                           while(true)
                           {
                              §0"-§ = new b2DistanceInput();
                              while(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 addr48:
                                 if(_loc2_ || b2TimeOfImpact)
                                 {
                                    §0!]§ = new b2DistanceOutput();
                                    addr55:
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr48);
                                          §§goto(addr55);
                                       }
                                       continue;
                                       addr46:
                                    }
                                    if(!_loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          return;
                                          addr40:
                                       }
                                       continue loop2;
                                    }
                                    addr84:
                                    while(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §@b§ = new b2Transform();
            §§goto(addr84);
         }
         §§goto(addr40);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §!J§(param1:b2TOIInput) : Number
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
            if(!_loc23_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§2J§;
         var _loc3_:b2DistanceProxy = param1.§4"$§;
         var _loc4_:b2Sweep = param1.§]!^§;
         var _loc5_:b2Sweep = param1.§2T§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§+%§ == _loc5_.§+%§);
            if(!(_loc23_ && _loc3_))
            {
               addr84:
               b2Settings.b2Assert(1 - _loc4_.§+%§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§,!;§);
            if(!_loc23_)
            {
               §§push(§§pop() + _loc3_.§,!;§);
               if(_loc24_ || param1)
               {
                  addr107:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§"!t§);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc24_ || _loc3_)
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
               if(_loc24_)
               {
                  §8!v§.count = 0;
                  do
                  {
                     §0"-§.§28§ = false;
                  }
                  while(!_loc24_);
                  
               }
               while(true)
               {
                  _loc4_.§#%§(§@b§,_loc8_);
                  if(!_loc23_)
                  {
                     _loc5_.§#%§(§1!i§,_loc8_);
                     while(true)
                     {
                        §§push(§0"-§);
                        loop3:
                        while(true)
                        {
                           §§pop().§2J§ = _loc2_;
                           addr1042:
                           while(true)
                           {
                              §§push(§0"-§);
                              continue loop3;
                           }
                        }
                        while(_loc24_ || b2TimeOfImpact)
                        {
                           §§goto(addr780);
                           §§push(_loc12_);
                           §§goto(addr651);
                        }
                     }
                  }
                  §§goto(addr1150);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr84);
      }
   }
}
