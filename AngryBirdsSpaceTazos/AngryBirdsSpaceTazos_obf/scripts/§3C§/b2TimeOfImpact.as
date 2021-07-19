package §3c§
{
   import §9t§.b2Math;
   import §9t§.b2Sweep;
   import §9t§.b2Transform;
   import §@!'§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §6!p§:b2SimplexCache;
      
      private static var §!I§:b2DistanceInput;
      
      private static var §-!x§:b2Transform;
      
      private static var §^!1§:b2Transform;
      
      private static var §,"$§:b2SeparationFunction;
      
      private static var §@!&§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2TimeOfImpact))
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
                     loop3:
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(true)
                        {
                           §6!p§ = new b2SimplexCache();
                           loop5:
                           while(true)
                           {
                              §!I§ = new b2DistanceInput();
                              while(_loc2_)
                              {
                                 §-!x§ = new b2Transform();
                                 while(true)
                                 {
                                    §^!1§ = new b2Transform();
                                 }
                                 loop9:
                                 while(_loc2_ || b2TimeOfImpact)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    §@!&§ = new b2DistanceOutput();
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr105);
                                       }
                                       while(true)
                                       {
                                          §,"$§ = new b2SeparationFunction();
                                          continue loop9;
                                       }
                                       return;
                                       addr54:
                                       addr99:
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr54);
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr93);
            }
         }
         §§goto(addr99);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §9Y§(param1:b2TOIInput) : Number
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
         if(!(_loc23_ && b2TimeOfImpact))
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
         var _loc2_:b2DistanceProxy = param1.§3">§;
         var _loc3_:b2DistanceProxy = param1.§&!"§;
         var _loc4_:b2Sweep = param1.§3v§;
         var _loc5_:b2Sweep = param1.§]x§;
         if(_loc24_ || b2TimeOfImpact)
         {
            b2Settings.b2Assert(_loc4_.§8!L§ == _loc5_.§8!L§);
            if(_loc24_ || _loc3_)
            {
               addr94:
               b2Settings.b2Assert(1 - _loc4_.§8!L§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§7!m§);
            if(!(_loc23_ && param1))
            {
               §§push(§§pop() + _loc3_.§7!m§);
               if(!(_loc23_ && b2TimeOfImpact))
               {
                  addr122:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§>s§);
               if(!(_loc23_ && _loc2_))
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
               if(!_loc23_)
               {
                  §6!p§.count = 0;
                  do
                  {
                     §!I§.§'!g§ = false;
                  }
                  while(!(_loc24_ || _loc3_));
                  
               }
               while(true)
               {
                  _loc4_.§>u§(§-!x§,_loc8_);
                  loop2:
                  while(true)
                  {
                     _loc5_.§>u§(§^!1§,_loc8_);
                     if(!_loc23_)
                     {
                        §§push(§!I§);
                        loop3:
                        while(true)
                        {
                           §§pop().§3">§ = _loc2_;
                           while(true)
                           {
                              §§push(§!I§);
                              loop5:
                              while(true)
                              {
                                 §§pop().§&!"§ = _loc3_;
                                 while(true)
                                 {
                                    §§push(§!I§);
                                    loop7:
                                    while(_loc24_)
                                    {
                                       §§pop().§>"0§ = §-!x§;
                                       while(!_loc23_)
                                       {
                                          continue loop7;
                                          §§push(§!I§);
                                          if(_loc24_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop7;
                                          loop10:
                                          for(; !(_loc23_ && _loc3_); if(_loc23_ && _loc2_)
                                          {
                                             continue;
                                          },§§goto(addr1003),§§push(1))
                                          {
                                             §§push(§@!&§.§]1§);
                                             while(true)
                                             {
                                                §§push(0);
                                                while(§§pop() > §§pop())
                                                {
                                                   §§push(§,"$§);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§pop().§>`§(§6!p§,_loc2_,§-!x§,_loc3_,§^!1§);
                                                      addr989:
                                                      while(true)
                                                      {
                                                         §§push(§,"$§);
                                                         continue loop13;
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr1157);
                  }
               }
            }
            §§goto(addr122);
         }
         §§goto(addr94);
      }
   }
}
