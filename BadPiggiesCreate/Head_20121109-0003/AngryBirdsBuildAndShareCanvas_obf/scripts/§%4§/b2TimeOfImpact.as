package §%4§
{
   import §<!a§.b2Math;
   import §<!a§.b2Sweep;
   import §<!a§.b2Transform;
   import §<";§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §8!f§:b2SimplexCache;
      
      private static var §2!#§:b2DistanceInput;
      
      private static var §,!6§:b2Transform;
      
      private static var §;U§:b2Transform;
      
      private static var §'"?§:b2SeparationFunction;
      
      private static var §9!+§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
               while(_loc1_ || b2TimeOfImpact)
               {
                  b2_toiMaxIters = 0;
                  loop2:
                  for(; _loc1_; if(_loc2_)
                  {
                     continue;
                  },while(true)
                  {
                     §'"?§ = new b2SeparationFunction();
                     §§goto(addr43);
                  },§§goto(addr37))
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(true)
                        {
                           §8!f§ = new b2SimplexCache();
                           addr109:
                           while(true)
                           {
                              §2!#§ = new b2DistanceInput();
                              continue loop4;
                           }
                        }
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                           for(; !(_loc2_ && _loc1_); §9!+§ = new b2DistanceOutput(),if(!_loc1_)
                           {
                              continue;
                           },if(!_loc2_)
                           {
                              return;
                              addr37:
                           },§§goto(addr83))
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr109);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
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
      
      public static function §#B§(param1:b2TOIInput) : Number
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
         var _loc2_:b2DistanceProxy = param1.§]!0§;
         var _loc3_:b2DistanceProxy = param1.§&!`§;
         var _loc4_:b2Sweep = param1.§1!w§;
         var _loc5_:b2Sweep = param1.§7?§;
         if(_loc24_ || _loc3_)
         {
            b2Settings.b2Assert(_loc4_.§,>§ == _loc5_.§,>§);
            if(_loc24_)
            {
               addr89:
               b2Settings.b2Assert(1 - _loc4_.§,>§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§&!$§);
            if(_loc24_ || param1)
            {
               §§push(§§pop() + _loc3_.§&!$§);
               if(!(_loc23_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            §§push(param1.§7!i§);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!(_loc23_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:int = 1000;
            var _loc10_:int = 0;
            §§push(0);
            if(_loc24_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(!(_loc23_ && b2TimeOfImpact))
            {
               §8!f§.count = 0;
            }
            do
            {
               §2!#§.§`!9§ = false;
            }
            while(_loc23_);
            
            while(true)
            {
               _loc4_.§60§(§,!6§,_loc8_);
               while(true)
               {
                  _loc5_.§60§(§;U§,_loc8_);
                  if(!_loc23_)
                  {
                     §§push(§2!#§);
                     loop3:
                     while(true)
                     {
                        §§pop().§]!0§ = _loc2_;
                        addr1017:
                        while(true)
                        {
                           §§push(§2!#§);
                           continue loop3;
                        }
                     }
                  }
                  §§goto(addr1072);
                  if(!(_loc24_ || param1))
                  {
                     continue;
                  }
                  §§push(b2Math);
                  §§push(_loc6_);
                  if(_loc24_)
                  {
                     §§push(_loc7_);
                     if(!_loc23_)
                     {
                        addr909:
                        §§push(§§pop() - §§pop());
                        §§push(0.75);
                        if(!_loc23_)
                        {
                           §§push(§§pop() * _loc6_);
                        }
                     }
                     §§goto(addr915);
                     §§push(§§pop().§8!c§(§§pop(),§§pop()));
                  }
                  §§goto(addr909);
               }
            }
         }
         §§goto(addr89);
      }
   }
}
