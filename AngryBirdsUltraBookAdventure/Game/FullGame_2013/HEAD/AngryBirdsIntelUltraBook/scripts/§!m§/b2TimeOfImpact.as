package §!m§
{
   import §+!g§.b2Settings;
   import §>!8§.b2Math;
   import §>!8§.b2Sweep;
   import §>!8§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §2;§:b2SimplexCache;
      
      private static var §46§:b2DistanceInput;
      
      private static var §,J§:b2Transform;
      
      private static var §8l§:b2Transform;
      
      private static var §2!$§:b2SeparationFunction;
      
      private static var §-!=§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2TimeOfImpact))
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
                  for(; !_loc2_; if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  })
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     b2_toiRootIters = 0;
                     loop3:
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop4:
                        while(true)
                        {
                           §2;§ = new b2SimplexCache();
                           while(!_loc2_)
                           {
                              §46§ = new b2DistanceInput();
                              loop6:
                              while(true)
                              {
                                 §,J§ = new b2Transform();
                                 addr91:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              loop9:
                              while(_loc1_ || _loc2_)
                              {
                                 §-!=§ = new b2DistanceOutput();
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 addr40:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop2;
                                 }
                                 addr83:
                                 while(_loc1_)
                                 {
                                    §2!$§ = new b2SeparationFunction();
                                    continue loop9;
                                    §§goto(addr40);
                                 }
                                 §§goto(addr91);
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
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §@! §(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(!(_loc24_ && b2TimeOfImpact))
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc23_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc23_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§'[§;
         var _loc3_:b2DistanceProxy = param1.§4P§;
         var _loc4_:b2Sweep = param1.§=!S§;
         var _loc5_:b2Sweep = param1.§&+§;
         if(_loc23_ || param1)
         {
            b2Settings.b2Assert(_loc4_.§#K§ == _loc5_.§#K§);
            if(!(_loc24_ && b2TimeOfImpact))
            {
               b2Settings.b2Assert(1 - _loc4_.§#K§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§!@§);
         if(_loc23_)
         {
            §§push(§§pop() + _loc3_.§!@§);
            if(!_loc24_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§@O§);
         if(!(_loc24_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc23_ || b2TimeOfImpact)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(1000);
         if(_loc23_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(0);
         if(!(_loc24_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         §§push(0);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(!(_loc24_ && param1))
         {
            §2;§.count = 0;
            do
            {
               §46§.§>L§ = false;
            }
            while(_loc24_);
            
         }
         loop1:
         while(true)
         {
            §§push(true);
            loop2:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc24_ && _loc3_))
                  {
                     addr1408:
                     b2_toiMaxIters = b2Math.§-!V§(b2_toiMaxIters,_loc10_);
                  }
                  addr1417:
                  return _loc8_;
                  addr1416:
               }
               else
               {
                  _loc4_.§1?§(§,J§,_loc8_);
                  loop3:
                  while(true)
                  {
                     _loc5_.§1?§(§8l§,_loc8_);
                     loop4:
                     while(true)
                     {
                        §§push(§46§);
                        loop5:
                        while(true)
                        {
                           §§pop().§'[§ = _loc2_;
                           loop6:
                           while(true)
                           {
                              §§push(§46§);
                              loop7:
                              for(; _loc23_; while(_loc23_ || b2TimeOfImpact)
                              {
                                 §§pop().§;!5§ = §,J§;
                                 while(true)
                                 {
                                    §§push(§46§);
                                    if(!(_loc23_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§pop().§'G§ = §8l§;
                                    loop11:
                                    while(true)
                                    {
                                       b2Distance.§^!g§(§-!=§,§2;§,§46§);
                                       if(!(_loc24_ && _loc3_))
                                       {
                                          §§push(§-!=§.distance);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(!(_loc23_ || b2TimeOfImpact))
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§push(1);
                                                }
                                                else
                                                {
                                                   §§push(§2!$§);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§pop().§2@§(§2;§,_loc2_,§,J§,_loc3_,§8l§);
                                                      loop15:
                                                      while(!_loc24_)
                                                      {
                                                         §§push(§2!$§);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§,J§);
                                                            addr1048:
                                                            while(true)
                                                            {
                                                               §§push(§8l§);
                                                               addr1050:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(!(_loc24_ && param1))
                                                                        {
                                                                           if(!(_loc23_ || b2TimeOfImpact))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc12_);
                                                                           loop21:
                                                                           for(; !(_loc24_ && b2TimeOfImpact); while(_loc23_ || _loc2_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              §§goto(addr857);
                                                                           })
                                                                           {
                                                                              §§push(0);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    if(_loc23_ || _loc2_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(_loc12_);
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               §§push(b2Math);
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!(_loc24_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr1001:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     §§push(0.75);
                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc6_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§pop().§-!V§(§§pop(),§§pop()));
                                                                                                                  while(!_loc24_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop28:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              loop32:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc12_);
                                                                                                                                 loop33:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc11_);
                                                                                                                                    loop34:
                                                                                                                                    while(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0.5);
                                                                                                                                          loop36:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             addr918:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr919:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() >= §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      while(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            addr907:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                               if(_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                     if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(1);
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    loop43:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                       addr812:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr1340);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1299);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr921);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1246);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1310);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1041);
                                                                                                                                                                  addr886:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc24_ && param1))
                                                                                                                                                         {
                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                            loop69:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + 1);
                                                                                                                                                                        if(_loc23_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop69;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr773:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc23_ || b2TimeOfImpact))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop24;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!(_loc24_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1299);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr940);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1408);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr886);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr752);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1312);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1262);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr654);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  addr260:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1390);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1101);
                                                                                                                                                      }
                                                                                                                                                      continue loop35;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      addr921:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  if(!(_loc24_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     addr939:
                                                                                                                                                                     _loc8_ = Number(§§pop());
                                                                                                                                                                     addr940:
                                                                                                                                                                     §§goto(addr1408);
                                                                                                                                                                     addr940:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     loop81:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              loop82:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc13_);
                                                                                                                                                                                 if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1287:
                                                                                                                                                                                    §§push(1 + 100 * Number.MIN_VALUE);
                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1286:
                                                                                                                                                                                       §§push(§§pop() * _loc8_);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1299:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1307:
                                                                                                                                                                                                loop94:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop92:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                                                                         if(_loc24_ && b2TimeOfImpact)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop81;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc23_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + 1);
                                                                                                                                                                                                               if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop81;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1390:
                                                                                                                                                                                                               addr1390:
                                                                                                                                                                                                               addr1389:
                                                                                                                                                                                                               addr1389:
                                                                                                                                                                                                               addr1390:
                                                                                                                                                                                                               if(§§pop() != _loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop1;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1408);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1246:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop86:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(50);
                                                                                                                                                                                                               if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(§§pop() == §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1340:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           b2_toiMaxRootIters = b2Math.§-!V§(b2_toiMaxRootIters,_loc18_);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop82;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1350:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1416);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1340:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1416);
                                                                                                                                                                                                                     continue loop86;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop57:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(true);
                                                                                                                                                                                                                     if(!(_loc23_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1340);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1408);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                        if(!(_loc23_ || b2TimeOfImpact))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop81;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1101:
                                                                                                                                                                                                                           _loc8_ = Number(§§pop());
                                                                                                                                                                                                                           break loop20;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(1);
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() & §§pop());
                                                                                                                                                                                                                           loop58:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc23_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 if(_loc24_ && b2TimeOfImpact)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr672:
                                                                                                                                                                                                                                       if(!(_loc23_ || param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                       if(!(_loc24_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          while(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop36;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc23_ || b2TimeOfImpact))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1286);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                                                                         addr716:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1286);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr712:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr742:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr743:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                                                                                                                         addr744:
                                                                                                                                                                                                                                                         while(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc4_.§1?§(§,J§,_loc19_);
                                                                                                                                                                                                                                                               addr569:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc5_.§1?§(§8l§,_loc19_);
                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop92;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr561:
                                                                                                                                                                                                                                                                  §§push(§2!$§);
                                                                                                                                                                                                                                                                  if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr799:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§,J§);
                                                                                                                                                                                                                                                                     addr801:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§8l§);
                                                                                                                                                                                                                                                                        addr803:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr561);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr634:
                                                                                                                                                                                                                                                               continue loop92;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr835:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr799);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr741:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr712);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                                                                          addr698:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop94;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1416);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                                                                    loop78:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc15_);
                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr741);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr712);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1287);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr716);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                          addr582:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr964:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          addr965:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                                                                             addr966:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop78;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr574:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1286);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                    addr752:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop57;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr751:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1408);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc4_.§1?§(§,J§,_loc15_);
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc5_.§1?§(§8l§,_loc15_);
                                                                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop86;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1229:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr672);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1320);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1416);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1416);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1320:
                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1390);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1312:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1390);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1310:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1378:
                                                                                                                                                                                                   §§goto(addr1389);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1307:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1417);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1299:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1307);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop28;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1408);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1307);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
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
                                                                                                                                                                              if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1378);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break loop26;
                                                                                                                                                                     }
                                                                                                                                                                     addr1262:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1417);
                                                                                                                                                               }
                                                                                                                                                               addr930:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1408);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1390);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1299);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr910:
                                                                                                                           }
                                                                                                                           §§goto(addr1042);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr1408);
                                                                                                                     if(!(_loc23_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop66:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           _loc20_ = §§pop();
                                                                                                                           if(_loc23_)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                    §§push(b2Math);
                                                                                                                                    §§push(_loc20_);
                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - _loc11_);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().§&!]§(§§pop()));
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          §§push(0.025);
                                                                                                                                          if(_loc23_ || b2TimeOfImpact)
                                                                                                                                          {
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc23_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     if(!(_loc24_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr442:
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                           {
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              if(!(_loc24_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_ && param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop3;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc24_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1340);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr930);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr907);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1350);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr965);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr743);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1417);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc24_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr367:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1307);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1015);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr574);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr308:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr920);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr793);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1408);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr965);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr366:
                                                                                                                                                                              }
                                                                                                                                                                              break loop66;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc23_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(_loc24_ && _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1287);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc17_ = §§pop();
                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr812);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr442);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr366);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr940);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1408);
                                                                                                                                                                                                addr224:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr966);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr744);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1417);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr367);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1287);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr308);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1299);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr764);
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1286);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1286);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr918);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1286);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr919);
                                                                                                                                                }
                                                                                                                                                §§goto(addr698);
                                                                                                                                             }
                                                                                                                                             §§goto(addr582);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1286);
                                                                                                                                       }
                                                                                                                                       §§goto(addr906);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1287);
                                                                                                                                 }
                                                                                                                                 §§goto(addr827);
                                                                                                                              }
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr763);
                                                                                                                     }
                                                                                                                     §§goto(addr1378);
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               §§goto(addr1001);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(b2Math);
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc24_ && param1))
                                                                                                            {
                                                                                                               addr958:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(0.02);
                                                                                                               if(_loc23_)
                                                                                                               {
                                                                                                                  addr961:
                                                                                                                  §§push(§§pop() * _loc6_);
                                                                                                               }
                                                                                                               §§goto(addr964);
                                                                                                               §§push(§§pop().§-!V§(§§pop(),§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr961);
                                                                                                         }
                                                                                                         §§goto(addr958);
                                                                                                         §§goto(addr964);
                                                                                                      }
                                                                                                      §§goto(addr1408);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1032);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1040);
                                                                                          }
                                                                                          §§goto(addr910);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1254);
                                                                                 }
                                                                                 §§goto(addr1032);
                                                                              }
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                        §§goto(addr1295);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                §§goto(addr1101);
                                             }
                                          }
                                       }
                                       §§goto(addr1295);
                                    }
                                    if(_loc24_ && b2TimeOfImpact)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr224);
                                    }
                                    §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                    if(_loc23_ || _loc2_)
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    _loc22_ = §§pop();
                                    if(_loc23_)
                                    {
                                       _loc21_.b2_toiRootIters = _loc22_;
                                    }
                                    if(!(_loc24_ && b2TimeOfImpact))
                                    {
                                       §§goto(addr1229);
                                    }
                                    §§goto(addr1340);
                                 }
                              })
                              {
                                 §§pop().§4P§ = _loc3_;
                                 while(true)
                                 {
                                    §§push(§46§);
                                    continue loop7;
                                    addr1032:
                                    if(_loc24_ && param1)
                                    {
                                       continue;
                                    }
                                    _loc8_ = Number(1);
                                    §§goto(addr1408);
                                 }
                              }
                              continue loop5;
                           }
                        }
                        while(true)
                        {
                           if(!(_loc23_ || param1))
                           {
                              continue loop4;
                           }
                           §§goto(addr260);
                        }
                     }
                     while(!(_loc24_ && _loc3_))
                     {
                        §§goto(addr773);
                        §§push(1);
                     }
                  }
               }
               §§goto(addr1408);
            }
         }
      }
   }
}
