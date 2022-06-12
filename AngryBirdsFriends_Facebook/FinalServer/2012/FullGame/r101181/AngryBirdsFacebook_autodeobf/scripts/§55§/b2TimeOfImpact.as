package §55§
{
   import §#]§.b2Math;
   import §#]§.b2Sweep;
   import §#]§.b2Transform;
   import §4!!§.b2Settings;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §&!_§:b2SimplexCache;
      
      private static var §3!C§:b2DistanceInput;
      
      private static var §["§:b2Transform;
      
      private static var §%M§:b2Transform;
      
      private static var §]!W§:b2SeparationFunction;
      
      private static var §9b§:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            b2_toiCalls = 0;
            while(true)
            {
               b2_toiIters = 0;
            }
            addr138:
         }
         loop1:
         while(true)
         {
            b2_toiMaxIters = 0;
            loop2:
            while(!_loc1_)
            {
               b2_toiRootIters = 0;
               loop3:
               while(true)
               {
                  b2_toiMaxRootIters = 0;
                  loop4:
                  while(true)
                  {
                     §&!_§ = new b2SimplexCache();
                     while(true)
                     {
                        §3!C§ = new b2DistanceInput();
                        loop6:
                        while(!_loc1_)
                        {
                           §["§ = new b2Transform();
                           loop7:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop6;
                              }
                              if(_loc1_)
                              {
                                 break;
                              }
                              §%M§ = new b2Transform();
                              loop8:
                              while(true)
                              {
                                 §]!W§ = new b2SeparationFunction();
                                 while(true)
                                 {
                                    if(!(_loc1_ && b2TimeOfImpact))
                                    {
                                       continue loop1;
                                    }
                                    continue loop8;
                                    addr72:
                                    §9b§ = new b2DistanceOutput();
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                return;
                                             }
                                             continue loop3;
                                          }
                                          continue loop4;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr138);
         }
      }
      
      public function b2TimeOfImpact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §2z§(param1:b2TOIInput) : Number
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
         if(_loc24_ || _loc2_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(_loc24_)
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(_loc24_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§7!p§;
         var _loc3_:b2DistanceProxy = param1.§["@§;
         var _loc4_:b2Sweep = param1.§[!'§;
         var _loc5_:b2Sweep = param1.§8x§;
         if(!(_loc23_ && param1))
         {
            b2Settings.b2Assert(_loc4_.§0!O§ == _loc5_.§0!O§);
            if(!(_loc23_ && b2TimeOfImpact))
            {
               b2Settings.b2Assert(1 - _loc4_.§0!O§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§%I§);
         if(_loc24_)
         {
            §§push(§§pop() + _loc3_.§%I§);
            if(_loc24_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§42§);
         if(_loc24_ || param1)
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
         if(!_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc11_:* = §§pop();
         if(!_loc23_)
         {
            §&!_§.count = 0;
            do
            {
               §3!C§.§1k§ = false;
            }
            while(_loc23_);
            
         }
         loop1:
         do
         {
            _loc4_.GetTransform(§["§,_loc8_);
            if(_loc24_ || param1)
            {
               _loc5_.GetTransform(§%M§,_loc8_);
               loop2:
               while(true)
               {
                  §§push(§3!C§);
                  loop3:
                  while(true)
                  {
                     §§pop().§7!p§ = _loc2_;
                     loop4:
                     while(true)
                     {
                        §§push(§3!C§);
                        loop5:
                        while(true)
                        {
                           §§pop().§["@§ = _loc3_;
                           loop6:
                           while(true)
                           {
                              §§push(§3!C§);
                              while(_loc24_)
                              {
                                 if(_loc24_)
                                 {
                                    §§pop().§'!3§ = §["§;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§3!C§);
                                       if(_loc23_)
                                       {
                                          break;
                                       }
                                       §§pop().§@!4§ = §%M§;
                                       loop9:
                                       while(true)
                                       {
                                          b2Distance.§;!h§(§9b§,§&!_§,§3!C§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§9b§.§0!e§);
                                             if(_loc24_)
                                             {
                                                §§push(0);
                                                loop11:
                                                while(true)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      addr1046:
                                                      §§push(Number(1));
                                                   }
                                                   else
                                                   {
                                                      §§push(§]!W§);
                                                      while(true)
                                                      {
                                                         §§pop().§`!r§(§&!_§,_loc2_,§["§,_loc3_,§%M§);
                                                         continue loop8;
                                                         addr988:
                                                         loop14:
                                                         for(; _loc24_ || _loc2_; if(_loc23_ && b2TimeOfImpact)
                                                         {
                                                            continue;
                                                         },§§push(§["§),if(_loc24_ || _loc3_)
                                                         {
                                                            §§goto(addr506);
                                                         },§§goto(addr728))
                                                         {
                                                            §§push(§["§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(§%M§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc24_ || b2TimeOfImpact)
                                                                                       {
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                if(!_loc24_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(_loc12_);
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   if(!(_loc23_ && param1))
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(b2Math);
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc24_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!_loc23_)
                                                                                                               {
                                                                                                                  addr970:
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  §§push(0.75);
                                                                                                                  if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc6_);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop().§2Y§(§§pop(),§§pop()));
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop28:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc11_ = §§pop();
                                                                                                                     if(!_loc23_)
                                                                                                                     {
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc11_);
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 loop32:
                                                                                                                                 while(_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(0.5);
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr867:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc23_)
                                                                                                                                                {
                                                                                                                                                   addr871:
                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!(_loc24_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      addr882:
                                                                                                                                                      _loc8_ = Number(1);
                                                                                                                                                      addr883:
                                                                                                                                                      if(!(_loc24_ || param1))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1020);
                                                                                                                                                      }
                                                                                                                                                      addr880:
                                                                                                                                                      addr881:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1197);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1221);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc24_ || b2TimeOfImpact))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(_loc23_)
                                                                                                                                                   {
                                                                                                                                                      continue loop23;
                                                                                                                                                   }
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop36:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc13_ = §§pop();
                                                                                                                                                      if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr829:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc14_ = §§pop();
                                                                                                                                                               addr830:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  loop40:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        loop41:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                           addr816:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr793:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 loop43:
                                                                                                                                                                                 for(; _loc24_ || param1; while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc24_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc24_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc23_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc20_ = §§pop();
                                                                                                                                                                                                if(!_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc24_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(b2Math);
                                                                                                                                                                                                      §§push(_loc20_);
                                                                                                                                                                                                      if(_loc24_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - _loc11_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().§"p§(§§pop()));
                                                                                                                                                                                                      loop66:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0.025);
                                                                                                                                                                                                         if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr381:
                                                                                                                                                                                                            if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc7_);
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc24_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc23_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!(_loc23_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr743);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop23;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr681:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc17_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr681:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              addr688:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           break loop66;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1169);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr568:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop11;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr669:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc15_);
                                                                                                                                                                                                                     if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr681);
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr688);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                               §§goto(addr1169);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  addr587:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr692:
                                                                                                                                                                                                                     addr692:
                                                                                                                                                                                                                     while(!_loc23_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                                                                        loop73:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc4_.GetTransform(§["§,_loc19_);
                                                                                                                                                                                                                                 addr560:
                                                                                                                                                                                                                                 addr1049:
                                                                                                                                                                                                                                 while(!_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc5_.GetTransform(§%M§,_loc19_);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop73;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr554);
                                                                                                                                                                                                                                       addr300:
                                                                                                                                                                                                                                       if(_loc24_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop26;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1197);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop34;
                                                                                                                                                                                                                              addr555:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr755);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr742);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                                  §§goto(addr381);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr586:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr755);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break loop23;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr691:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr692);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr373:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr560);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                             addr452:
                                                                                                                                                                                             if(!(_loc24_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr459:
                                                                                                                                                                                             if(_loc24_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                if(_loc24_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1149);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr568);
                                                                                                                                                                                                   §§goto(addr459);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr567:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1169);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1273);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr882);
                                                                                                                                                                                 },_loc8_ = §§pop(),§§goto(addr1049))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    loop44:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                                                                       addr802:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc4_.GetTransform(§["§,_loc15_);
                                                                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc5_.GetTransform(§%M§,_loc15_);
                                                                                                                                                                                                if(!(_loc23_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§]!W§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§["§);
                                                                                                                                                                                                      addr728:
                                                                                                                                                                                                      while(_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§%M§);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                                                                            if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  addr743:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc17_ = §§pop();
                                                                                                                                                                                                                     addr744:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                        addr745:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr746:
                                                                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr749:
                                                                                                                                                                                                                                 §§push(1);
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                                                                                                                    addr755:
                                                                                                                                                                                                                                    if(_loc23_ && _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop29;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1046);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1046);
                                                                                                                                                                                                                                       addr922:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1194);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1273);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr880);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              loop53:
                                                                                                                                                                                                                              for(; _loc24_ || _loc3_; if(!(_loc24_ || b2TimeOfImpact))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },§§push(1),if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              },§§push(§§pop() & §§pop()),if(!_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr881);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1259);
                                                                                                                                                                                                                              })
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                                                                                                                    if(!(_loc23_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1214:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc18_);
                                                                                                                                                                                                                                          if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1259);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                       addr1214:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1213:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1213:
                                                                                                                                                                                                                                    b2_toiMaxRootIters = b2Math.§2Y§(b2_toiMaxRootIters,_loc18_);
                                                                                                                                                                                                                                    §§goto(addr1197);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr871);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr749);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1197);
                                                                                                                                                                                                            addr506:
                                                                                                                                                                                                            §§push(§%M§);
                                                                                                                                                                                                            if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                                                                                  continue loop43;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop16;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§]!W§);
                                                                                                                                                                                                      addr554:
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                      if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1213);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr883);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1259);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop28;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop8;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop10;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1046);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr828:
                                                                                                                                                      }
                                                                                                                                                      break loop28;
                                                                                                                                                      if(_loc23_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                         addr600:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr555);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1155);
                                                                                                                                          }
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       if(!(_loc24_ || b2TimeOfImpact))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc24_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc23_ && param1))
                                                                                                                                             {
                                                                                                                                                addr451:
                                                                                                                                                §§goto(addr452);
                                                                                                                                                §§push(Number(_loc19_));
                                                                                                                                             }
                                                                                                                                             §§goto(addr802);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1197);
                                                                                                                                       }
                                                                                                                                       §§push(_loc20_);
                                                                                                                                       if(!(_loc23_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          if(_loc24_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                if(_loc24_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      loop70:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc23_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc23_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  while(!_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc23_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc14_ = §§pop();
                                                                                                                                                                        if(_loc24_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr292:
                                                                                                                                                                                    _loc16_ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop70;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr300);
                                                                                                                                                                                       §§goto(addr292);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1197);
                                                                                                                                                                                    addr293:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1273);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr517);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1197);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1194);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                                  addr351:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1197);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr1003);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop19;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                        if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr669);
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr681);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr867);
                                                                                                                                                                  }
                                                                                                                                                                  addr654:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr650:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr691);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr452);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                   if(!(_loc23_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc24_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr373);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc23_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               continue loop20;
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc23_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc24_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                     if(_loc24_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc23_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                              if(_loc24_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc24_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc24_ || b2TimeOfImpact)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc23_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr691);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1197);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr829);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr744);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1273);
                                                                                                                                                                              addr165:
                                                                                                                                                                              if(_loc23_ && b2TimeOfImpact)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                                                                                                                                                              if(_loc24_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                                                              }
                                                                                                                                                                              _loc22_ = §§pop();
                                                                                                                                                                              if(!(_loc23_ && b2TimeOfImpact))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc21_.b2_toiRootIters = _loc22_;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(50);
                                                                                                                                                                                    if(_loc23_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1213);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1273);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1214);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1259);
                                                                                                                                                                                 addr1137:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1151);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop6;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr816);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr1137);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr828);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr587);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1155);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr599);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr451);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1197);
                                                                                                                                                }
                                                                                                                                                §§goto(addr745);
                                                                                                                                             }
                                                                                                                                             §§goto(addr654);
                                                                                                                                          }
                                                                                                                                          break loop23;
                                                                                                                                       }
                                                                                                                                       §§goto(addr351);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr921:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    §§goto(addr922);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr858:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1264);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr970);
                                                                                                            if(!(_loc24_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr314);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(b2Math);
                                                                                                         §§push(_loc12_);
                                                                                                         if(_loc24_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc24_)
                                                                                                            {
                                                                                                               addr907:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(0.02);
                                                                                                               if(_loc24_ || b2TimeOfImpact)
                                                                                                               {
                                                                                                                  addr915:
                                                                                                                  §§push(§§pop() * _loc6_);
                                                                                                               }
                                                                                                               §§push(§§pop().§2Y§(§§pop(),§§pop()));
                                                                                                               if(_loc24_)
                                                                                                               {
                                                                                                                  §§goto(addr921);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr1273);
                                                                                                            }
                                                                                                            §§goto(addr915);
                                                                                                         }
                                                                                                         §§goto(addr907);
                                                                                                      }
                                                                                                      §§goto(addr1273);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr1155);
                                                                                             }
                                                                                             §§goto(addr1151);
                                                                                          }
                                                                                          §§goto(addr858);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr1210);
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 addr1003:
                                                                                 §§push(1);
                                                                                 if(_loc24_ || b2TimeOfImpact)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc24_ || b2TimeOfImpact)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       addr1020:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1155:
                                                                                       §§push(1 + 100 * Number.MIN_VALUE);
                                                                                       if(!(_loc23_ && param1))
                                                                                       {
                                                                                          addr1169:
                                                                                          §§push(§§pop() * _loc8_);
                                                                                       }
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          if(_loc24_ || param1)
                                                                                          {
                                                                                             if(!(_loc24_ || _loc2_))
                                                                                             {
                                                                                                addr1151:
                                                                                                §§push(_loc13_);
                                                                                                if(!_loc23_)
                                                                                                {
                                                                                                   §§goto(addr1155);
                                                                                                }
                                                                                                addr1197:
                                                                                                _loc8_ = §§pop();
                                                                                                _loc10_++;
                                                                                                addr1198:
                                                                                                if(_loc24_)
                                                                                                {
                                                                                                   if(_loc24_ || b2TimeOfImpact)
                                                                                                   {
                                                                                                      addr1149:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr1151);
                                                                                                      }
                                                                                                      §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                                                                      if(!(_loc23_ && b2TimeOfImpact))
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      _loc22_ = §§pop();
                                                                                                      if(_loc24_ || param1)
                                                                                                      {
                                                                                                         _loc21_.b2_toiIters = _loc22_;
                                                                                                      }
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         addr1259:
                                                                                                         §§push(_loc10_);
                                                                                                         §§push(_loc9_);
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      addr1272:
                                                                                                      addr1273:
                                                                                                      return _loc8_;
                                                                                                      addr1272:
                                                                                                   }
                                                                                                   §§goto(addr1198);
                                                                                                }
                                                                                                addr1266:
                                                                                                b2_toiMaxIters = b2Math.§2Y§(b2_toiMaxIters,_loc10_);
                                                                                                §§goto(addr1272);
                                                                                                addr1221:
                                                                                                addr1264:
                                                                                             }
                                                                                             §§goto(addr1266);
                                                                                          }
                                                                                          §§goto(addr1259);
                                                                                       }
                                                                                       §§push(_loc13_);
                                                                                       if(_loc24_ || _loc3_)
                                                                                       {
                                                                                          addr1194:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             §§goto(addr1197);
                                                                                          }
                                                                                          §§goto(addr1273);
                                                                                       }
                                                                                       §§goto(addr1197);
                                                                                    }
                                                                                    §§goto(addr1197);
                                                                                 }
                                                                                 §§goto(addr1259);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(_loc23_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc15_);
                                                   if(_loc24_ || param1)
                                                   {
                                                      §§goto(addr586);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr1169);
                                                }
                                             }
                                             §§goto(addr1048);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  if(!(_loc24_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr1213);
               }
            }
            §§goto(addr1259);
         }
         while(§§pop() != §§pop());
         
         if(!_loc23_)
         {
            §§goto(addr1197);
         }
         §§goto(addr1272);
      }
   }
}
