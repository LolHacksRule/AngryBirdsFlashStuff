package §`!H§
{
   import §8!H§.b2Settings;
   import §?!&§.b2Math;
   import §?!&§.b2Sweep;
   import §?!&§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §-!W§:b2SimplexCache;
      
      private static var §=!%§:b2DistanceInput;
      
      private static var §+!H§:b2Transform;
      
      private static var §"!h§:b2Transform;
      
      private static var §]!d§:b2SeparationFunction;
      
      private static var §,_§:b2DistanceOutput;
      
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
                  for(; _loc1_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },if(!_loc1_)
                  {
                     continue loop0;
                  },§"!h§ = new b2Transform(),§§goto(addr70))
                  {
                     b2_toiRootIters = 0;
                     while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        loop5:
                        for(; !(_loc2_ && _loc2_); addr47:,if(_loc2_ && _loc1_)
                        {
                           continue;
                        },§,_§ = new b2DistanceOutput(),addr54:,if(!_loc2_)
                        {
                           addr35:
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §]!d§ = new b2SeparationFunction();
                                 addr43:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          §§goto(addr47);
                                       }
                                       else
                                       {
                                          §§goto(addr93);
                                       }
                                    }
                                    §§goto(addr76);
                                    §§goto(addr54);
                                 }
                                 continue loop5;
                                 §§goto(addr35);
                              }
                              addr70:
                           }
                           return;
                        },§§goto(addr43))
                        {
                           §=!%§ = new b2DistanceInput();
                           while(true)
                           {
                              §+!H§ = new b2Transform();
                              addr76:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 addr121:
                                 while(true)
                                 {
                                    §-!W§ = new b2SimplexCache();
                                    continue loop5;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
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
      
      public static function §9A§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = true;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(_loc24_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!(_loc23_ && param1))
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§1&§;
         var _loc3_:b2DistanceProxy = param1.§5!f§;
         var _loc4_:b2Sweep = param1.§>$§;
         var _loc5_:b2Sweep = param1.§^q§;
         if(_loc24_ || _loc2_)
         {
            b2Settings.b2Assert(_loc4_.§]h§ == _loc5_.§]h§);
            if(!_loc23_)
            {
               b2Settings.b2Assert(1 - _loc4_.§]h§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§&!N§);
         if(_loc24_ || b2TimeOfImpact)
         {
            §§push(§§pop() + _loc3_.§&!N§);
            if(!_loc23_)
            {
               addr117:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            §§push(param1.§8!K§);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            §§push(1000);
            if(!(_loc23_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc9_:* = §§pop();
            §§push(0);
            if(!(_loc23_ && param1))
            {
               §§push(int(§§pop()));
            }
            var _loc10_:* = §§pop();
            §§push(0);
            if(!_loc23_)
            {
               §§push(Number(§§pop()));
            }
            var _loc11_:* = §§pop();
            if(_loc24_)
            {
               §-!W§.count = 0;
            }
            do
            {
               §=!%§.§+!?§ = false;
            }
            while(!(_loc24_ || _loc2_));
            
            loop1:
            while(true)
            {
               §§push(true);
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!(_loc23_ && b2TimeOfImpact))
                     {
                        addr1309:
                        b2_toiMaxIters = b2Math.§,C§(b2_toiMaxIters,_loc10_);
                     }
                     §§goto(addr1318);
                  }
                  _loc4_.§?Q§(§+!H§,_loc8_);
                  loop3:
                  while(true)
                  {
                     _loc5_.§?Q§(§"!h§,_loc8_);
                     loop4:
                     while(true)
                     {
                        §§push(§=!%§);
                        loop5:
                        while(true)
                        {
                           §§pop().§1&§ = _loc2_;
                           if(_loc24_ || _loc2_)
                           {
                              §§push(§=!%§);
                              loop6:
                              while(true)
                              {
                                 §§pop().§5!f§ = _loc3_;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§=!%§);
                                    loop8:
                                    while(!_loc23_)
                                    {
                                       §§pop().§1!C§ = §+!H§;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§=!%§);
                                          if(!_loc24_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc23_)
                                          {
                                             break;
                                          }
                                          §§pop().§0D§ = §"!h§;
                                          loop10:
                                          while(true)
                                          {
                                             b2Distance.§9!=§(§,_§,§-!W§,§=!%§);
                                             loop11:
                                             while(_loc24_)
                                             {
                                                §§push(§,_§.distance);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         §§push(§]!d§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop().§3!a§(§-!W§,_loc2_,§+!H§,_loc3_,§"!h§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§]!d§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§+!H§);
                                                                  addr986:
                                                                  while(true)
                                                                  {
                                                                     §§push(§"!h§);
                                                                     addr988:
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
                                                                              if(!_loc23_)
                                                                              {
                                                                                 if(!(_loc24_ || b2TimeOfImpact))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(_loc12_);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc24_)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          addr979:
                                                                                          _loc8_ = Number(1);
                                                                                          addr980:
                                                                                          addr977:
                                                                                          addr978:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(_loc24_ || param1)
                                                                                             {
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(!(_loc23_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc24_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() > §§pop())
                                                                                                            {
                                                                                                               if(_loc24_ || param1)
                                                                                                               {
                                                                                                                  §§push(b2Math);
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(_loc24_ || b2TimeOfImpact)
                                                                                                                     {
                                                                                                                        addr953:
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        §§push(0.75);
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc6_);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§pop().§,C§(§§pop(),§§pop()));
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!_loc23_)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           addr1213:
                                                                                                                           loop105:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + 1);
                                                                                                                                    if(_loc24_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc23_ && param1)
                                                                                                                                       {
                                                                                                                                          loop66:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(50);
                                                                                                                                             if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                             {
                                                                                                                                                loop101:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc23_)
                                                                                                                                                      {
                                                                                                                                                         addr1238:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            b2_toiMaxRootIters = b2Math.§,C§(b2_toiMaxRootIters,_loc18_);
                                                                                                                                                            addr1246:
                                                                                                                                                            loop24:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr1185:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1189:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(1 + 100 * Number.MIN_VALUE);
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              addr1199:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr1200:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop105;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1309);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1209:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1209:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1318);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1198:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1200);
                                                                                                                                                                     }
                                                                                                                                                                     addr1189:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1209);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1238:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1309);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop69:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(true);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1238);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1309);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(_loc23_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop101;
                                                                                                                                                               }
                                                                                                                                                               if(_loc24_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                                                                  loop70:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(_loc23_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc24_ || _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop105;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                           loop71:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    loop89:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr625:
                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                       if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop73:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                      if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr659:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop74:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         addr661:
                                                                                                                                                                                                         loop75:
                                                                                                                                                                                                         while(!(_loc23_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            while(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop58:
                                                                                                                                                                                                            while(_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                                                                               loop59:
                                                                                                                                                                                                               for(; !_loc23_; if(!(_loc24_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               },if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr512);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr979);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§]!d§);
                                                                                                                                                                                                                     continue loop14;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr773:
                                                                                                                                                                                                               })
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                                                                     break loop75;
                                                                                                                                                                                                                     addr210:
                                                                                                                                                                                                                     if(!(_loc24_ || _loc2_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr217:
                                                                                                                                                                                                                     if(!(_loc23_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc23_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc17_ = §§pop();
                                                                                                                                                                                                                                       if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                                                                             if(_loc23_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop63:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1168:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                                                                                                                         if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc24_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop105;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                                                                                                                                                                                                                                  if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  _loc22_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc21_.b2_toiIters = _loc22_;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1279:
                                                                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                                                                     break loop63;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1185);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1299:
                                                                                                                                                                                                                                                         §§goto(addr1309);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1168:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc9_);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1165:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr158:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1318);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop81:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             loop82:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop71;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc20_ = §§pop();
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(b2Math);
                                                                                                                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - _loc11_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(§§pop().§'!8§(§§pop()));
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop82;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0.025);
                                                                                                                                                                                                                                                                              if(_loc24_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                       if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                          if(!_loc23_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc24_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr449:
                                                                                                                                                                                                                                                                                                         _loc13_ = Number(_loc19_);
                                                                                                                                                                                                                                                                                                         addr448:
                                                                                                                                                                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1238);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1145:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop66;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1145:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                                                                                                                                                                            addr786:
                                                                                                                                                                                                                                                                                                            while(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc4_.§?Q§(§+!H§,_loc15_);
                                                                                                                                                                                                                                                                                                                     break loop70;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1279);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1318:
                                                                                                                                                                                                                                                                                                               return _loc8_;
                                                                                                                                                                                                                                                                                                               §§goto(addr217);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop19;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr806:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1318);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                                                                   if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr323:
                                                                                                                                                                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                                                                                                                                                                         if(!_loc23_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc23_ && param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop89;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               while(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  while(!_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr565:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc4_.§?Q§(§+!H§,_loc19_);
                                                                                                                                                                                                                                                                                                                           addr519:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                    addr509:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 _loc5_.§?Q§(§"!h§,_loc19_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§]!d§);
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                                                                                                                                                                       addr511:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr899:
                                                                                                                                                                                                                                                                                                                                    addr899:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr839:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                          break loop81;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop14;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr851:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                                 if(_loc23_ && param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(!_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr872:
                                                                                                                                                                                                                                                                                                                                                _loc8_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                                                addr873:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop105;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1024:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       continue loop11;
                                                                                                                                                                                                                                                                                                                                       addr861:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                                                                                                                           §§goto(addr565);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr512:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr1205);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1309);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop34;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           addr810:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr809:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr861);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1318);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr549:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr1200);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                               if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr716:
                                                                                                                                                                                                                                                                                                                  while(!_loc23_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop69;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr873);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1205);
                                                                                                                                                                                                                                                                                                               §§goto(addr1309);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1145);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1309);
                                                                                                                                                                                                                                                                                                               addr738:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1309);
                                                                                                                                                                                                                                                                                                            §§goto(addr323);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr980);
                                                                                                                                                                                                                                                                                                         addr679:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1309);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1318);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                   break loop58;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr851);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr850:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1200);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1199);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    while(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr541:
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                if(!(_loc24_ || b2TimeOfImpact))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr549);
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr849:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr850);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop13;
                                                                                                                                                                                                                                                                                    addr842:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr529:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc23_ && _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop75;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop74;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr541);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr1199);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                                                                                                                                 §§goto(addr1199);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1198);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc15_ = §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr805:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr806);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr560);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr448);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr977);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr509);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr979);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1025);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr898:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc11_ = §§pop();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr897:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr899);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr809);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr669);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop58;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr759:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr845);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr842);
                                                                                                                                                                                                                                          addr289:
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(!(_loc24_ || b2TimeOfImpact))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr194:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr210);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr528:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr529);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr185:
                                                                                                                                                                                                                                             §§goto(addr1209);
                                                                                                                                                                                                                                             if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr194);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                                                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc21_.b2_toiRootIters = _loc22_;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1145);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1238);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr481:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1309);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr158);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr303:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1183);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1209);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr872);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr810);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr786);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr669:
                                                                                                                                                                                                            while(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr828);
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(1);
                                                                                                                                                                                                                  if(_loc24_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr738);
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1165);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1309);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1145);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                                                                                  if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop66;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc18_ = §§pop();
                                                                                                                                                                                                                  §§goto(addr716);
                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr707:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1309);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop4;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1199);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr659);
                                                                                                                                                                                             §§goto(addr625);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr633:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1199);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr623:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr633);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr623);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr528);
                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr661);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr707);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_.§?Q§(§"!h§,_loc15_);
                                                                                                                                                                        §§goto(addr773);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1024);
                                                                                                                                                                        }
                                                                                                                                                                        addr1023:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr860);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1168);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(_loc24_ || b2TimeOfImpact)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr805);
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr978);
                                                                                                                                                      addr797:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1309);
                                                                                                                                                }
                                                                                                                                                addr1223:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                          {
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1299);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1309);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1165);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1168);
                                                                                                                                 }
                                                                                                                                 addr1150:
                                                                                                                              }
                                                                                                                              §§goto(addr1165);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr959:
                                                                                                                  }
                                                                                                                  §§goto(addr953);
                                                                                                               }
                                                                                                               §§goto(addr1238);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(b2Math);
                                                                                                               §§push(_loc12_);
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc23_)
                                                                                                                  {
                                                                                                                     addr886:
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     §§push(0.02);
                                                                                                                     if(_loc24_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc6_);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr897);
                                                                                                                  §§push(§§pop().§,C§(§§pop(),§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr886);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr959);
                                                                                                   }
                                                                                                   §§goto(addr1183);
                                                                                                }
                                                                                                §§goto(addr839);
                                                                                             }
                                                                                             §§goto(addr1223);
                                                                                          }
                                                                                          §§goto(addr1150);
                                                                                       }
                                                                                       §§goto(addr1309);
                                                                                    }
                                                                                    §§goto(addr1200);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1318);
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1023);
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           §§goto(addr1213);
                        }
                     }
                  }
                  §§goto(addr1309);
               }
            }
         }
         §§goto(addr117);
      }
   }
}
