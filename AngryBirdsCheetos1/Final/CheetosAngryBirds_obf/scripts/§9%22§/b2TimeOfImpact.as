package §9"§
{
   import §0!G§.b2Math;
   import §0!G§.b2Sweep;
   import §0!G§.b2Transform;
   import §2!F§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §`]§:b2SimplexCache;
      
      private static var §`!N§:b2DistanceInput;
      
      private static var §'i§:b2Transform;
      
      private static var §&!5§:b2Transform;
      
      private static var §]x§:b2SeparationFunction;
      
      private static var §[n§:b2DistanceOutput;
      
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
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     continue loop0;
                     addr115:
                     loop4:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           §`]§ = new b2SimplexCache();
                           loop6:
                           while(!_loc1_)
                           {
                              §`!N§ = new b2DistanceInput();
                              loop7:
                              do
                              {
                                 §'i§ = new b2Transform();
                                 loop8:
                                 while(true)
                                 {
                                    §&!5§ = new b2Transform();
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc2_ || b2TimeOfImpact))
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §]x§ = new b2SeparationFunction();
                                          §§goto(addr54);
                                          continue loop6;
                                       }
                                       continue loop8;
                                       addr54:
                                       while(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §[n§ = new b2DistanceOutput();
                                             if(_loc2_ || _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              while(_loc1_ && b2TimeOfImpact);
                              
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §"5§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§+X§;
         var _loc3_:b2DistanceProxy = param1.§4q§;
         var _loc4_:b2Sweep = param1.§ y§;
         var _loc5_:b2Sweep = param1.§@$§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§]p§ == _loc5_.§]p§);
            if(!_loc23_)
            {
               addr89:
               b2Settings.b2Assert(1 - _loc4_.§]p§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§@s§);
            if(!_loc23_)
            {
               §§push(§§pop() + _loc3_.§@s§);
               if(!(_loc23_ && b2TimeOfImpact))
               {
                  addr112:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§7!F§);
               if(_loc24_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc24_)
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
                  §`]§.count = 0;
                  do
                  {
                     §`!N§.§[!+§ = false;
                  }
                  while(_loc23_ && _loc2_);
                  
               }
               while(true)
               {
                  _loc4_.§4!P§(§'i§,_loc8_);
                  while(true)
                  {
                     _loc5_.§4!P§(§&!5§,_loc8_);
                     while(true)
                     {
                        §§push(§`!N§);
                        loop4:
                        while(true)
                        {
                           §§pop().§+X§ = _loc2_;
                           addr1044:
                           while(true)
                           {
                              §§push(§`!N§);
                              loop6:
                              while(true)
                              {
                                 §§pop().§4q§ = _loc3_;
                                 addr1039:
                                 while(true)
                                 {
                                    §§push(§`!N§);
                                    while(true)
                                    {
                                       §§pop().§&!C§ = §'i§;
                                       addr1034:
                                       while(true)
                                       {
                                          §§push(§`!N§);
                                          if(!_loc24_)
                                          {
                                             break;
                                          }
                                          if(_loc24_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc24_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(b2Math);
                        §§push(_loc20_);
                        if(!_loc23_)
                        {
                           §§push(§§pop() - _loc11_);
                        }
                        §§goto(addr391);
                        §§push(§§pop().§8M§(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr89);
      }
   }
}
