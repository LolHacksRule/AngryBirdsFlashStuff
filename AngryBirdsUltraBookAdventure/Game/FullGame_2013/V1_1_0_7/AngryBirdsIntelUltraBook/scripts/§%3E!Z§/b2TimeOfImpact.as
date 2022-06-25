package §>!Z§
{
   import §&H§.b2Math;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §@!3§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §7!D§:b2SimplexCache;
      
      private static var §%p§:b2DistanceInput;
      
      private static var §0G§:b2Transform;
      
      private static var §9t§:b2Transform;
      
      private static var §[L§:b2SeparationFunction;
      
      private static var §!9§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                     loop3:
                     while(_loc2_ || b2TimeOfImpact)
                     {
                        b2_toiMaxRootIters = 0;
                        for(; !_loc1_; while(!(_loc1_ && _loc1_))
                        {
                           §9t§ = new b2Transform();
                           while(!_loc1_)
                           {
                              continue loop3;
                           }
                           §§goto(addr110);
                        })
                        {
                           §7!D§ = new b2SimplexCache();
                           while(true)
                           {
                              §%p§ = new b2DistanceInput();
                              §§goto(addr104);
                           }
                        }
                        continue loop1;
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         addr104:
         do
         {
            §0G§ = new b2Transform();
            continue loop4;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §6!C§(param1:b2TOIInput) : Number
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
         if(!_loc23_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!(_loc23_ && _loc3_))
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§,N§;
         var _loc3_:b2DistanceProxy = param1.§#y§;
         var _loc4_:b2Sweep = param1.§,!+§;
         var _loc5_:b2Sweep = param1.§5!v§;
         if(_loc24_)
         {
            b2Settings.b2Assert(_loc4_.§3J§ == _loc5_.§3J§);
            if(!(_loc23_ && _loc3_))
            {
               addr89:
               b2Settings.b2Assert(1 - _loc4_.§3J§ > Number.MIN_VALUE);
            }
            §§push(_loc2_.§ !c§);
            if(!_loc23_)
            {
               §§push(§§pop() + _loc3_.§ !c§);
               if(!(_loc23_ && param1))
               {
                  addr112:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(param1.§^b§);
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
               var _loc9_:int = 1000;
               var _loc10_:int = 0;
               §§push(0);
               if(!_loc23_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               if(!(_loc23_ && b2TimeOfImpact))
               {
                  §7!D§.count = 0;
                  do
                  {
                     §%p§.§#!+§ = false;
                  }
                  while(_loc23_);
                  
               }
               loop1:
               while(true)
               {
                  _loc4_.§%J§(§0G§,_loc8_);
                  loop2:
                  while(true)
                  {
                     _loc5_.§%J§(§9t§,_loc8_);
                     loop3:
                     while(true)
                     {
                        §§push(§%p§);
                        loop4:
                        while(true)
                        {
                           §§pop().§,N§ = _loc2_;
                           loop5:
                           while(true)
                           {
                              §§push(§%p§);
                              loop6:
                              while(_loc24_)
                              {
                                 §§pop().§#y§ = _loc3_;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§%p§);
                                    loop8:
                                    while(true)
                                    {
                                       §§pop().§ !f§ = §0G§;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§%p§);
                                          if(_loc23_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc24_)
                                          {
                                             break;
                                          }
                                          §§pop().§!@§ = §9t§;
                                          loop10:
                                          while(true)
                                          {
                                             b2Distance.§65§(§!9§,§7!D§,§%p§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§!9§.§>!_§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         addr1001:
                                                         if(!(_loc24_ || param1))
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr1010:
                                                         _loc8_ = Number(1);
                                                         addr1216:
                                                         b2_toiMaxIters = b2Math.§&h§(b2_toiMaxIters,_loc10_);
                                                         return _loc8_;
                                                         addr1009:
                                                         addr1011:
                                                      }
                                                      else
                                                      {
                                                         §§push(§[L§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop().§`!D§(§7!D§,_loc2_,§0G§,_loc3_,§9t§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§[L§);
                                                               loop16:
                                                               while(_loc24_)
                                                               {
                                                                  §§push(§0G§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§9t§);
                                                                     addr968:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                        addr969:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                     addr416:
                                                                     if(_loc23_ && b2TimeOfImpact)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§9t§);
                                                                     if(!(_loc23_ && _loc2_))
                                                                     {
                                                                        if(!_loc23_)
                                                                        {
                                                                           §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                           loop60:
                                                                           for(; !_loc23_; loop63:
                                                                           while(!(_loc23_ && param1))
                                                                           {
                                                                              §§push(0.025);
                                                                              loop64:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc24_ || b2TimeOfImpact)
                                                                                 {
                                                                                    if(!_loc23_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc24_)
                                                                                       {
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                §§push(_loc20_);
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc23_)
                                                                                                   {
                                                                                                      continue loop63;
                                                                                                   }
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr1116:
                                                                                                         §§push(_loc8_);
                                                                                                      }
                                                                                                      continue;
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr437);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr319:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop69:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         _loc14_ = §§pop();
                                                                                                         if(_loc24_ || param1)
                                                                                                         {
                                                                                                            if(!(_loc23_ && b2TimeOfImpact))
                                                                                                            {
                                                                                                               if(!(_loc23_ && param1))
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  §§push(_loc20_);
                                                                                                                  loop65:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc24_)
                                                                                                                     {
                                                                                                                        continue loop69;
                                                                                                                     }
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           addr255:
                                                                                                                           if(!(_loc23_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                 {
                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       loop66:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc18_++;
                                                                                                                                          if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   loop67:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                      if(!(_loc23_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr1138:
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         if(_loc24_)
                                                                                                                                                         {
                                                                                                                                                            addr1141:
                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            b2_toiMaxRootIters = b2Math.§&h§(b2_toiMaxRootIters,_loc18_);
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               addr1104:
                                                                                                                                                               §§push(_loc13_);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  addr1108:
                                                                                                                                                                  §§push(1 + 100 * Number.MIN_VALUE);
                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1116);
                                                                                                                                                                  }
                                                                                                                                                                  addr1118:
                                                                                                                                                                  if(§§pop() < §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1141);
                                                                                                                                                                     }
                                                                                                                                                                     addr1121:
                                                                                                                                                                     break loop65;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                  {
                                                                                                                                                                     addr1130:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1138);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1216);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1130);
                                                                                                                                                               addr1166:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1216);
                                                                                                                                                            addr1156:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1204);
                                                                                                                                                      }
                                                                                                                                                      if(_loc24_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc23_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               _loc17_ = §§pop();
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     addr188:
                                                                                                                                                                     if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop66;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop2;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr445);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               loop73:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr634:
                                                                                                                                                                  loop74:
                                                                                                                                                                  while(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                  {
                                                                                                                                                                     addr641:
                                                                                                                                                                     if(!(_loc23_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_.§%J§(§0G§,_loc19_);
                                                                                                                                                                                    addr466:
                                                                                                                                                                                    addr1152:
                                                                                                                                                                                    loop59:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc23_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc5_.§%J§(§9t§,_loc19_);
                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr460:
                                                                                                                                                                                                      §§push(§[L§);
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(!_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§0G§);
                                                                                                                                                                                                            §§goto(addr460);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop16;
                                                                                                                                                                                                         addr689:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr408:
                                                                                                                                                                                                      §§push(§0G§);
                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr416);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                                                                         loop51:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc17_ = §§pop();
                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc11_);
                                                                                                                                                                                                                              loop53:
                                                                                                                                                                                                                              while(_loc24_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                                                                    addr726:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                 loop54:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc24_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop55:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop54;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr558:
                                                                                                                                                                                                                                                      if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() & §§pop());
                                                                                                                                                                                                                                                            if(_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                        addr575:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc11_);
                                                                                                                                                                                                                                                                           if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                                                                              loop75:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                                                                       if(_loc24_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr613:
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             addr614:
                                                                                                                                                                                                                                                                                             while(_loc24_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc17_);
                                                                                                                                                                                                                                                                                                if(!(_loc24_ || _loc2_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break loop64;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             loop34:
                                                                                                                                                                                                                                                                                             while(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc24_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc8_);
                                                                                                                                                                                                                                                                                                               loop37:
                                                                                                                                                                                                                                                                                                               while(_loc24_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr817:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 addr796:
                                                                                                                                                                                                                                                                                                                                 loop41:
                                                                                                                                                                                                                                                                                                                                 while(_loc24_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr798:
                                                                                                                                                                                                                                                                                                                                    if(_loc23_ && _loc2_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc24_ || _loc2_))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                addr981:
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             loop32:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                                break loop41;
                                                                                                                                                                                                                                                                                                                                                addr905:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1121);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr798);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr983:
                                                                                                                                                                                                                                                                                                                                       _loc8_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                                                       break loop65;
                                                                                                                                                                                                                                                                                                                                       addr946:
                                                                                                                                                                                                                                                                                                                                       addr982:
                                                                                                                                                                                                                                                                                                                                       addr984:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                                                                       addr783:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                          break loop74;
                                                                                                                                                                                                                                                                                                                                          §§goto(addr558);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr214:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr395:
                                                                                                                                                                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          break loop67;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop67;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr905);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1166);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr224:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr983);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                 break loop37;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr919:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc10_);
                                                                                                                                                                                                                                                                                                                              addr849:
                                                                                                                                                                                                                                                                                                                              addr910:
                                                                                                                                                                                                                                                                                                                              while(!(_loc23_ && param1))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc23_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break loop65;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          break loop55;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          addr874:
                                                                                                                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break loop65;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr1155:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(§§pop() != §§pop())
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop55;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1156);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1155:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1009);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1010);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(0);
                                                                                                                                                                                                                                                                                                                                 if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr919);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1155);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr849);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr848:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr829);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                                                                                                                     §§goto(addr641);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(!_loc23_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(b2Math);
                                                                                                                                                                                                                                                                                                                           §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                              if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr937:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                 §§push(0.75);
                                                                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * _loc6_);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(§§pop().§&h§(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr946);
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr937);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1130);
                                                                                                                                                                                                                                                                                                                        addr924:
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
                                                                                                                                                                                                                                                                                                                              addr888:
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              §§push(0.02);
                                                                                                                                                                                                                                                                                                                              if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().§&h§(§§pop(),§§pop()));
                                                                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!_loc24_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                              §§goto(addr905);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr904:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr829);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr969);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                                                                                                                  break loop53;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr979:
                                                                                                                                                                                                                                                                                                               addr813:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr848);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1116);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr844:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break loop75;
                                                                                                                                                                                                                                                                                                   §§goto(addr255);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr613:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          addr631:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                             addr632:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop73;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr613);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1118);
                                                                                                                                                                                                                                                                              addr584:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1116);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr574:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(0.5);
                                                                                                                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop51;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                                                                                                                 if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc24_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc24_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc23_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      break loop60;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr614);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr632);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr528:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr584);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1118);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr613);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr631);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break loop64;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr978:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr979);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1118);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr904);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1108);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1108);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr982);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop59;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1204);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr783);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1204);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr867);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr750);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1102:
                                                                                                                                                                                                                                       if(false)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1104);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                                                                                                                                                                                                       if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + 1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc21_.b2_toiIters = _loc22_;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1204);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1010);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr849);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop3;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr910);
                                                                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr981);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1108);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr923);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1108);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr871);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr776:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr777);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr693);
                                                                                                                                                                                                         §§goto(addr408);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1011);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1010);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr924);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr817);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr726);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(50);
                                                                                                                                                                                       if(!_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1155);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1204);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr655);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr655:
                                                                                                                                                                                 addr461:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1001);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1010);
                                                                                                                                                                           }
                                                                                                                                                                           break loop67;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr813);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr816);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     if(_loc23_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        break loop66;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr776);
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1214);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr634);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr224);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   _loc10_++;
                                                                                                                                                   if(!(_loc23_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1102);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1204);
                                                                                                                                                   addr1148:
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
                                                                                                                                                   if(_loc24_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1141);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1141);
                                                                                                                                             }
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_);
                                                                                                                                          if(!_loc23_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1152);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1204);
                                                                                                                                       }
                                                                                                                                       addr1092:
                                                                                                                                    }
                                                                                                                                    §§goto(addr1141);
                                                                                                                                 }
                                                                                                                                 §§goto(addr575);
                                                                                                                              }
                                                                                                                              §§goto(addr1138);
                                                                                                                           }
                                                                                                                           §§goto(addr840);
                                                                                                                        }
                                                                                                                        §§goto(addr796);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr394:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr395);
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  addr353:
                                                                                                                  §§goto(addr1010);
                                                                                                               }
                                                                                                               §§goto(addr984);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr391:
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§goto(addr394);
                                                                                                                  §§push(_loc19_);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr806);
                                                                                                               }
                                                                                                               §§goto(addr1204);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr1102);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr749);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr749);
                                                                                             }
                                                                                             §§goto(addr391);
                                                                                          }
                                                                                          §§goto(addr528);
                                                                                       }
                                                                                       §§goto(addr1116);
                                                                                    }
                                                                                    §§goto(addr844);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr1108);
                                                                              §§push(§§pop() * §§pop());
                                                                           })
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              while(_loc24_ || _loc2_)
                                                                              {
                                                                                 _loc20_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(b2Math);
                                                                                    §§push(_loc20_);
                                                                                    if(!(_loc23_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() - _loc11_);
                                                                                    }
                                                                                    §§push(§§pop().§0@§(§§pop()));
                                                                                    continue loop60;
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 §§goto(addr1216);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 if(!_loc24_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _loc4_.§%J§(§0G§,_loc15_);
                                                                                 continue loop2;
                                                                              }
                                                                              if(_loc10_ != _loc9_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(!(_loc23_ && _loc3_))
                                                                              {
                                                                                 addr1214:
                                                                              }
                                                                              §§goto(addr1216);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc24_)
                                                                              {
                                                                                 _loc19_ = §§pop();
                                                                                 if(!(_loc23_ && b2TimeOfImpact))
                                                                                 {
                                                                                    §§goto(addr461);
                                                                                 }
                                                                                 §§goto(addr1092);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr1108);
                                                                        }
                                                                        §§goto(addr968);
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop6;
                                    }
                                    if(_loc23_ && b2TimeOfImpact)
                                    {
                                       continue;
                                    }
                                    §§push(1);
                                    if(_loc23_ && _loc3_)
                                    {
                                       §§goto(addr1152);
                                    }
                                    §§goto(addr749);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              continue loop4;
                           }
                        }
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
