package §3"5§
{
   import §5"i§.b2Settings;
   import §[R§.b2Math;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §=#;§:b2SimplexCache;
      
      private static var §+"Q§:b2DistanceInput;
      
      private static var §6X§:b2Transform;
      
      private static var §&&§:b2Transform;
      
      private static var §3"n§:b2SeparationFunction;
      
      private static var §+T§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            b2_toiCalls = 0;
            loop0:
            while(true)
            {
               b2_toiIters = 0;
               while(true)
               {
                  b2_toiMaxIters = 0;
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(true)
                        {
                           §=#;§ = new b2SimplexCache();
                           addr108:
                           while(true)
                           {
                              §+"Q§ = new b2DistanceInput();
                              addr102:
                              while(true)
                              {
                                 §6X§ = new b2Transform();
                                 continue loop4;
                              }
                           }
                        }
                     }
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     §3"n§ = new b2SeparationFunction();
                     §§goto(addr38);
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr54);
               }
            }
         }
         while(true)
         {
            §&&§ = new b2Transform();
            §§goto(addr70);
         }
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
      
      public static function §]"A§(param1:b2TOIInput) : Number
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
            if(!(_loc24_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§<!b§;
         var _loc3_:b2DistanceProxy = param1.§#!]§;
         var _loc4_:b2Sweep = param1.§#![§;
         var _loc5_:b2Sweep = param1.§?"s§;
         if(!(_loc24_ && _loc3_))
         {
            b2Settings.b2Assert(_loc4_.§ #L§ == _loc5_.§ #L§);
            if(!(_loc24_ && b2TimeOfImpact))
            {
               b2Settings.b2Assert(1 - _loc4_.§ #L§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§ "^§);
         if(!_loc24_)
         {
            §§push(§§pop() + _loc3_.§ "^§);
            if(_loc23_)
            {
               addr111:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§;+§);
            if(_loc23_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(!_loc24_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc23_ || _loc3_)
            {
               §=#;§.count = 0;
               do
               {
                  §+"Q§.§@"k§ = false;
               }
               while(!(_loc23_ || param1));
               
            }
            while(true)
            {
               _loc4_.GetTransform(§6X§,_loc8_);
               while(true)
               {
                  _loc5_.GetTransform(§&&§,_loc8_);
                  loop3:
                  while(true)
                  {
                     §§push(§+"Q§);
                     loop4:
                     while(true)
                     {
                        §§pop().§<!b§ = _loc2_;
                        addr1098:
                        while(true)
                        {
                           §§push(§+"Q§);
                           addr1082:
                           while(!_loc24_)
                           {
                              §§pop().§#!]§ = _loc3_;
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
   }
}
