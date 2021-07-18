package §5!o§
{
   import §2"=§.b2Math;
   import §2"=§.b2Sweep;
   import §2"=§.b2Transform;
   import §=o§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §%M§:b2SimplexCache;
      
      private static var §%!T§:b2DistanceInput;
      
      private static var § v§:b2Transform;
      
      private static var §2![§:b2Transform;
      
      private static var §>!k§:b2SeparationFunction;
      
      private static var §5"#§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            b2_toiCalls = 0;
            loop0:
            while(true)
            {
               b2_toiIters = 0;
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
                           §%M§ = new b2SimplexCache();
                           continue loop0;
                           addr55:
                           if(_loc2_ || b2TimeOfImpact)
                           {
                              §5"#§ = new b2DistanceOutput();
                              addr62:
                              if(!_loc2_)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr48:
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr55);
                                    }
                                    else
                                    {
                                       while(!_loc1_)
                                       {
                                          §>!k§ = new b2SeparationFunction();
                                          continue loop10;
                                       }
                                       while(true)
                                       {
                                          § v§ = new b2Transform();
                                          continue loop3;
                                       }
                                       addr78:
                                       addr106:
                                    }
                                 }
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    return;
                                    addr40:
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || b2TimeOfImpact))
                  {
                     continue;
                  }
                  §2![§ = new b2Transform();
                  §§goto(addr78);
               }
            }
         }
         while(true)
         {
            §%!T§ = new b2DistanceInput();
            §§goto(addr106);
         }
         §§goto(addr40);
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
      
      public static function §@!l§(param1:b2TOIInput) : Number
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
            if(!(_loc24_ && _loc3_))
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§^!W§;
         var _loc3_:b2DistanceProxy = param1.§+!4§;
         var _loc4_:b2Sweep = param1.§+!B§;
         var _loc5_:b2Sweep = param1.§"!b§;
         if(_loc23_)
         {
            b2Settings.b2Assert(_loc4_.§`!e§ == _loc5_.§`!e§);
            if(!_loc24_)
            {
               b2Settings.b2Assert(1 - _loc4_.§`!e§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§;$§);
         if(!_loc24_)
         {
            §§push(§§pop() + _loc3_.§;$§);
            if(!_loc24_)
            {
               addr101:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§<!$§);
            if(_loc23_ || _loc3_)
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
            if(_loc23_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc23_)
            {
               §%M§.count = 0;
               do
               {
                  §%!T§.§2h§ = false;
               }
               while(!(_loc23_ || param1));
               
            }
            loop1:
            while(true)
            {
               _loc4_.§?^§(§ v§,_loc8_);
               while(true)
               {
                  _loc5_.§?^§(§2![§,_loc8_);
                  if(_loc23_)
                  {
                     §§push(§%!T§);
                     loop3:
                     while(true)
                     {
                        §§pop().§^!W§ = _loc2_;
                        if(!(_loc24_ && _loc2_))
                        {
                           §§push(§%!T§);
                           loop4:
                           while(true)
                           {
                              §§pop().§+!4§ = _loc3_;
                              addr1059:
                              while(true)
                              {
                                 §§push(§%!T§);
                                 while(true)
                                 {
                                    §§pop().§'!k§ = § v§;
                                    if(_loc24_)
                                    {
                                       break;
                                    }
                                    §§push(§%!T§);
                                    if(_loc23_ || param1)
                                    {
                                       if(_loc23_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr1143:
                                 if(false)
                                 {
                                    addr1145:
                                    §§push(_loc13_);
                                    if(_loc23_ || param1)
                                    {
                                       addr1164:
                                       §§push(1 + 100 * Number.MIN_VALUE);
                                       if(_loc23_)
                                       {
                                          addr1163:
                                          §§push(§§pop() * _loc8_);
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc13_);
                                          if(!(_loc24_ && b2TimeOfImpact))
                                          {
                                             addr1174:
                                             §§push(Number(§§pop()));
                                             if(!_loc24_)
                                             {
                                                addr1177:
                                                _loc8_ = §§pop();
                                                if(_loc23_ || _loc3_)
                                                {
                                                   _loc10_++;
                                                   addr1238:
                                                   if(_loc23_)
                                                   {
                                                      if(_loc23_ || b2TimeOfImpact)
                                                      {
                                                         §§goto(addr1143);
                                                      }
                                                      addr1260:
                                                      b2_toiMaxIters = b2Math.§6§(b2_toiMaxIters,_loc10_);
                                                      §§push(_loc8_);
                                                      addr1165:
                                                   }
                                                   if(_loc10_ != _loc9_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(!(_loc24_ && b2TimeOfImpact))
                                                   {
                                                      addr1248:
                                                   }
                                                   §§goto(addr1260);
                                                }
                                                §§goto(addr1248);
                                             }
                                          }
                                          addr1267:
                                          return §§pop();
                                       }
                                       §§goto(addr1165);
                                    }
                                    §§goto(addr1177);
                                 }
                                 §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                 if(_loc23_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 _loc22_ = §§pop();
                                 if(!(_loc24_ && b2TimeOfImpact))
                                 {
                                    _loc21_.b2_toiIters = _loc22_;
                                 }
                                 if(_loc24_)
                                 {
                                 }
                                 §§goto(addr1248);
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr1238);
                     }
                  }
                  §§goto(addr1248);
                  if(_loc24_ && b2TimeOfImpact)
                  {
                     continue;
                  }
                  §§push(_loc19_);
                  if(!(_loc24_ && param1))
                  {
                     §§goto(addr435);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr1174);
               }
            }
         }
         §§goto(addr101);
      }
   }
}
