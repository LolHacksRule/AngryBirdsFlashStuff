package §&!-§
{
   import §8>§.b2Math;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §;u§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §4![§:b2SimplexCache;
      
      private static var §!N§:b2DistanceInput;
      
      private static var § true§:b2Transform;
      
      private static var §4!F§:b2Transform;
      
      private static var §3!C§:b2SeparationFunction;
      
      private static var §?w§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2TimeOfImpact)
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
               addr136:
               while(!_loc2_)
               {
                  b2_toiMaxIters = 0;
                  while(true)
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(!_loc2_)
                        {
                           §4![§ = new b2SimplexCache();
                           while(true)
                           {
                              §!N§ = new b2DistanceInput();
                              while(_loc1_)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    return;
                                    addr66:
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            § true§ = new b2Transform();
            loop8:
            while(true)
            {
               §4!F§ = new b2Transform();
               for(; _loc1_; §3!C§ = new b2SeparationFunction(),do
               {
                  §?w§ = new b2DistanceOutput();
               }
               while(!(_loc1_ || _loc2_));
               ,if(!(_loc1_ || _loc1_))
               {
                  continue;
               },if(!_loc1_)
               {
                  continue loop8;
               },§§goto(addr49))
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr131);
               }
               §§goto(addr114);
            }
         }
         §§goto(addr66);
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §'!<§(param1:b2TOIInput) : Number
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
         if(_loc24_ || param1)
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
         var _loc2_:b2DistanceProxy = param1.§5R§;
         var _loc3_:b2DistanceProxy = param1.§0D§;
         var _loc4_:b2Sweep = param1.§@!F§;
         var _loc5_:b2Sweep = param1.§7A§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§0p§ == _loc5_.§0p§);
            if(_loc24_)
            {
               b2Settings.b2Assert(1 - _loc4_.§0p§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§6q§);
         if(_loc24_)
         {
            §§push(§§pop() + _loc3_.§6q§);
            if(!(_loc23_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§4!P§);
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc24_ || _loc2_)
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
            §4![§.count = 0;
            do
            {
               §!N§.§2!j§ = false;
            }
            while(_loc23_);
            
         }
         loop1:
         while(true)
         {
            _loc4_.§+!C§(§ true§,_loc8_);
            while(true)
            {
               _loc5_.§+!C§(§4!F§,_loc8_);
               if(_loc24_ || _loc2_)
               {
                  §§push(§!N§);
                  while(true)
                  {
                     §§pop().§5R§ = _loc2_;
                     while(true)
                     {
                        §§push(§!N§);
                        while(true)
                        {
                           §§pop().§0D§ = _loc3_;
                           if(_loc24_)
                           {
                              §§push(§!N§);
                              continue;
                           }
                           addr1163:
                           addr1165:
                           b2_toiMaxRootIters = b2Math.§ 9§(b2_toiMaxRootIters,_loc18_);
                           addr1089:
                           addr1171:
                           §§push(_loc13_);
                           if(_loc24_)
                           {
                              addr1093:
                              addr1108:
                              §§push(1 + 100 * Number.MIN_VALUE);
                              if(!(_loc23_ && _loc3_))
                              {
                                 addr1107:
                                 §§push(§§pop() * _loc8_);
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc13_);
                                 if(_loc24_)
                                 {
                                    addr1115:
                                    §§push(Number(§§pop()));
                                    if(!(_loc23_ && _loc3_))
                                    {
                                       addr1123:
                                       _loc8_ = §§pop();
                                       if(!(_loc23_ && b2TimeOfImpact))
                                       {
                                          if(_loc24_ || b2TimeOfImpact)
                                          {
                                             _loc10_++;
                                             if(_loc24_)
                                             {
                                                addr1087:
                                                if(false)
                                                {
                                                   §§goto(addr1089);
                                                }
                                                §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                if(!(_loc23_ && _loc2_))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                _loc22_ = §§pop();
                                                if(!(_loc23_ && b2TimeOfImpact))
                                                {
                                                   _loc21_.b2_toiIters = _loc22_;
                                                }
                                                if(_loc24_ || b2TimeOfImpact)
                                                {
                                                   addr1214:
                                                   if(_loc10_ == _loc9_)
                                                   {
                                                      if(!_loc23_)
                                                      {
                                                         addr1221:
                                                         b2_toiMaxIters = b2Math.§ 9§(b2_toiMaxIters,_loc10_);
                                                         addr1219:
                                                      }
                                                      §§goto(addr1228);
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr1219);
                                             }
                                             §§goto(addr1214);
                                          }
                                          §§goto(addr1171);
                                       }
                                       §§goto(addr1214);
                                    }
                                 }
                                 §§goto(addr1228);
                              }
                              if(!_loc23_)
                              {
                                 addr1111:
                                 §§goto(addr1221);
                              }
                              else
                              {
                                 §§goto(addr1214);
                              }
                              return _loc8_;
                           }
                           §§goto(addr1123);
                        }
                     }
                     if(!(_loc24_ || _loc2_))
                     {
                        continue;
                     }
                     §§pop().§&!D§ = § true§;
                     §§goto(addr1015);
                  }
               }
               §§goto(addr1087);
            }
         }
      }
   }
}
