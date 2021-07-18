package §'"-§
{
   import §,"[§.b2Settings;
   import §6!^§.b2Math;
   import §6!^§.b2Sweep;
   import §6!^§.b2Transform;
   
   public class b2TimeOfImpact
   {
      
      private static var b2_toiCalls:int = 0;
      
      private static var b2_toiIters:int = 0;
      
      private static var b2_toiMaxIters:int = 0;
      
      private static var b2_toiRootIters:int = 0;
      
      private static var b2_toiMaxRootIters:int = 0;
      
      private static var §="P§:b2SimplexCache;
      
      private static var §@a§:b2DistanceInput;
      
      private static var §0l§:b2Transform;
      
      private static var §3!I§:b2Transform;
      
      private static var §3"<§:b2SeparationFunction;
      
      private static var §=! §:b2DistanceOutput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
                     loop6:
                     for(; _loc2_ || b2TimeOfImpact; if(!(_loc2_ || b2TimeOfImpact))
                     {
                        continue;
                     },addr45:,if(_loc2_ || b2TimeOfImpact)
                     {
                        continue loop1;
                     },addr149:,while(!_loc1_)
                     {
                        §="P§ = new b2SimplexCache();
                        §§goto(addr137);
                        §§goto(addr45);
                     },while(true)
                     {
                        b2_toiMaxRootIters = 0;
                        §§goto(addr142);
                     },addr142:)
                     {
                        §0l§ = new b2Transform();
                        loop7:
                        while(true)
                        {
                           §3!I§ = new b2Transform();
                           while(true)
                           {
                              §3"<§ = new b2SeparationFunction();
                              continue loop7;
                              addr31:
                              if(!(_loc1_ && b2TimeOfImpact))
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc1_ && b2TimeOfImpact))
                  {
                     return;
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr96);
            }
         }
         §§goto(addr149);
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
      
      public static function §0!j§(param1:b2TOIInput) : Number
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = 0;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         if(!_loc24_)
         {
            var _loc21_:*;
            §§push((_loc21_ = §§findproperty(b2_toiCalls)).b2_toiCalls);
            if(!(_loc24_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc22_:* = §§pop();
            if(!_loc24_)
            {
               _loc21_.b2_toiCalls = _loc22_;
            }
         }
         var _loc2_:b2DistanceProxy = param1.§>!j§;
         var _loc3_:b2DistanceProxy = param1.§@!a§;
         var _loc4_:b2Sweep = param1.§"8§;
         var _loc5_:b2Sweep = param1.§;!"§;
         if(_loc23_ || b2TimeOfImpact)
         {
            b2Settings.b2Assert(_loc4_.§6!0§ == _loc5_.§6!0§);
            if(_loc23_ || b2TimeOfImpact)
            {
               b2Settings.b2Assert(1 - _loc4_.§6!0§ > Number.MIN_VALUE);
            }
         }
         §§push(_loc2_.§0!_§);
         if(!_loc24_)
         {
            §§push(§§pop() + _loc3_.§0!_§);
            if(_loc23_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(param1.§#!s§);
         if(_loc23_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc23_ || param1)
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
         if(_loc23_ || _loc2_)
         {
            §="P§.count = 0;
            do
            {
               §@a§.§0y§ = false;
            }
            while(!(_loc23_ || _loc3_));
            
         }
         loop1:
         while(true)
         {
            _loc4_.§!"0§(§0l§,_loc8_);
            loop2:
            while(true)
            {
               _loc5_.§!"0§(§3!I§,_loc8_);
               loop3:
               while(true)
               {
                  §§push(§@a§);
                  loop4:
                  while(true)
                  {
                     §§pop().§>!j§ = _loc2_;
                     loop5:
                     while(true)
                     {
                        §§push(§@a§);
                        while(_loc23_)
                        {
                           §§pop().§@!a§ = _loc3_;
                           if(_loc23_ || _loc2_)
                           {
                              §§push(§@a§);
                              while(_loc23_ || param1)
                              {
                                 §§pop().§-H§ = §0l§;
                                 while(true)
                                 {
                                    §§push(§@a§);
                                    if(!(_loc23_ || _loc3_))
                                    {
                                       break;
                                    }
                                    §§pop().§3!3§ = §3!I§;
                                    continue loop2;
                                    addr782:
                                    if(!(_loc23_ || param1))
                                    {
                                       continue;
                                    }
                                    _loc4_.§!"0§(§0l§,_loc15_);
                                    _loc5_.§!"0§(§3!I§,_loc15_);
                                    loop39:
                                    while(true)
                                    {
                                       addr713:
                                       §§push(§3"<§);
                                       if(!_loc24_)
                                       {
                                          addr716:
                                          §§push(§0l§);
                                          if(!_loc24_)
                                          {
                                             addr719:
                                             §§push(§3!I§);
                                             if(_loc23_)
                                             {
                                                addr722:
                                                §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                if(_loc23_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc24_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc24_)
                                                      {
                                                         _loc17_ = §§pop();
                                                         addr731:
                                                         if(_loc23_)
                                                         {
                                                            addr734:
                                                            if(§§pop() >= _loc11_)
                                                            {
                                                               addr735:
                                                               if(!_loc23_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(1);
                                                               if(!(_loc24_ && _loc3_))
                                                               {
                                                                  if(_loc23_)
                                                                  {
                                                                     if(_loc23_ || b2TimeOfImpact)
                                                                     {
                                                                        addr755:
                                                                        _loc8_ = Number(§§pop());
                                                                        if(!_loc23_)
                                                                        {
                                                                           addr863:
                                                                           if(_loc23_ || _loc3_)
                                                                           {
                                                                              §§push(_loc10_);
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    if(_loc23_ || b2TimeOfImpact)
                                                                                    {
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          addr882:
                                                                                          if(!(_loc23_ || b2TimeOfImpact))
                                                                                          {
                                                                                             loop44:
                                                                                             while(true)
                                                                                             {
                                                                                                addr946:
                                                                                                if(_loc12_ > _loc6_)
                                                                                                {
                                                                                                   addr947:
                                                                                                   §§push(b2Math);
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc24_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         addr955:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         §§push(0.75);
                                                                                                         if(_loc23_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc6_);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop().§["2§(§§pop(),§§pop()));
                                                                                                      loop45:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr967:
                                                                                                         _loc11_ = Number(§§pop());
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            loop46:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc12_);
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr852:
                                                                                                                  §§push(§§pop() - _loc11_);
                                                                                                                  §§push(0.5);
                                                                                                                  if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                  {
                                                                                                                     addr862:
                                                                                                                     if(§§pop() >= §§pop() * _loc7_)
                                                                                                                     {
                                                                                                                        addr822:
                                                                                                                        §§push(Number(_loc8_));
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(_loc23_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                              {
                                                                                                                                 addr839:
                                                                                                                                 if(_loc23_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr812:
                                                                                                                                       _loc14_ = Number(§§pop());
                                                                                                                                       addr813:
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(!(_loc23_ || param1))
                                                                                                                                          {
                                                                                                                                             loop14:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(50);
                                                                                                                                                if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                {
                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr1219:
                                                                                                                                                         b2_toiMaxRootIters = b2Math.§["2§(b2_toiMaxRootIters,_loc18_);
                                                                                                                                                         break loop45;
                                                                                                                                                         addr1217:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop15:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                         if(!_loc24_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc24_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() & §§pop());
                                                                                                                                                                  if(!(_loc23_ || param1))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  if(!(_loc24_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        loop16:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                    if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc23_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             loop18:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                      loop20:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop21:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_.§!"0§(§0l§,_loc19_);
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc24_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc5_.§!"0§(§3!I§,_loc19_);
                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§3"<§);
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§0l§);
                                                                                                                                                                                                                        if(_loc23_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§3!I§);
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                                                                                                                                                                                              if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    if(_loc23_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr988:
                                                                                                                                                                                                                                          if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc20_ = §§pop();
                                                                                                                                                                                                                                             while(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(b2Math);
                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - _loc11_);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().§#X§(§§pop()));
                                                                                                                                                                                                                                                while(_loc23_ || param1)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0.025);
                                                                                                                                                                                                                                                   if(_loc23_ || param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1162:
                                                                                                                                                                                                                                                   addr1162:
                                                                                                                                                                                                                                                   addr1162:
                                                                                                                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc24_ && param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop45;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1270);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop21;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1181:
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1184:
                                                                                                                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                                                                                                                         if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc10_++;
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1143:
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1152:
                                                                                                                                                                                                                                                                     §§push(1 + 100 * Number.MIN_VALUE);
                                                                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1160:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc8_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1162);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1181);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push((_loc21_ = §§findproperty(b2_toiIters)).b2_toiIters);
                                                                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + 1);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc21_.b2_toiIters = _loc22_;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1268);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1270);
                                                                                                                                                                                                                                                            addr1192:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1276);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1277);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr755);
                                                                                                                                                                                                                                                if(_loc24_ && _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1219);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr813);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§=! §.§<"1§);
                                                                                                                                                                                                                                                addr1014:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   addr1015:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1020:
                                                                                                                                                                                                                                                            _loc8_ = Number(1);
                                                                                                                                                                                                                                                            break loop37;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§3"<§);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().§6!Q§(§="P§,_loc2_,§0l§,_loc3_,§3!I§);
                                                                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr973:
                                                                                                                                                                                                                                                               §§push(§3"<§);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§0l§);
                                                                                                                                                                                                                                                                  break loop39;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr973:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1002:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1136:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc18_);
                                                                                                                                                                                                                                                         if(!(_loc23_ || _loc2_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop15;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr839);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1028:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr992:
                                                                                                                                                                                                                                                   break loop38;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr942:
                                                                                                                                                                                                                                                §§push(_loc10_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   addr943:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop44;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop46;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1162);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr988:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             addr695:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc23_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc19_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc24_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop21;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr735);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr700:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr852);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1160);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr722);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr694:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr755);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1184);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc11_);
                                                                                                                                                                                                                                          if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc16_);
                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                if(_loc23_ || param1)
                                                                                                                                                                                                                                                {
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
                                                                                                                                                                                                                                                            addr666:
                                                                                                                                                                                                                                                            while(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc23_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc17_);
                                                                                                                                                                                                                                                                  if(!_loc24_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        addr685:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                           addr686:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr694);
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr946);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr924:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr929:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1020);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr684:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr685);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr862);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr734);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr665:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr684);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr661:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr686);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1160);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1162);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr807:
                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                          addr773:
                                                                                                                                                                                                                                          §§push(Number(_loc12_));
                                                                                                                                                                                                                                          if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr782);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1184);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1184);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr629:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1184);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1152);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr719);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr716);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr719);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1002);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr713);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1270);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1263);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr247:
                                                                                                                                                                                                      if(_loc24_ && _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc24_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr263:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            loop24:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc16_ = §§pop();
                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc24_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop25:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc18_++;
                                                                                                                                                                                                                           if(!_loc24_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc24_ && b2TimeOfImpact)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc24_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc24_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                                                                          if(_loc23_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr247);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1181);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr882);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                          addr901:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1184);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1270);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop24;
                                                                                                                                                                                                                                 addr323:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc20_);
                                                                                                                                                                                                                                       if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          if(!_loc24_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_ || b2TimeOfImpact)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc24_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr755);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr629);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr628:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1270);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1136);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr731);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1152);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1181);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr161:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push((_loc21_ = §§findproperty(b2_toiRootIters)).b2_toiRootIters);
                                                                                                                                                                                                                                    if(!(_loc24_ && b2TimeOfImpact))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc22_ = §§pop();
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc21_.b2_toiRootIters = _loc22_;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc23_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1136);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1263);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr700);
                                                                                                                                                                                                                              §§goto(addr782);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1277);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr947);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1136);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr322:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr323);
                                                                                                                                                                                                               §§goto(addr263);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr708:
                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr995:
                                                                                                                                                                                                            if(!_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1270);
                                                                                                                                                                                                            addr264:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr946);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr695);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1181);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr665);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr685);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1160);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr666);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr967);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1219);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop37;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr628);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1020);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1263);
                                                                                                                                                            }
                                                                                                                                                            addr707:
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            §§goto(addr708);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1263);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          if(!(_loc23_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr807);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr901);
                                                                                                                                    }
                                                                                                                                    addr847:
                                                                                                                                    addr994:
                                                                                                                                    _loc8_ = Number(§§pop());
                                                                                                                                    §§goto(addr995);
                                                                                                                                    addr811:
                                                                                                                                 }
                                                                                                                                 §§goto(addr1014);
                                                                                                                              }
                                                                                                                              §§goto(addr924);
                                                                                                                           }
                                                                                                                           §§goto(addr929);
                                                                                                                        }
                                                                                                                        §§goto(addr1181);
                                                                                                                     }
                                                                                                                     §§goto(addr863);
                                                                                                                  }
                                                                                                                  §§goto(addr1160);
                                                                                                               }
                                                                                                               §§goto(addr1270);
                                                                                                            }
                                                                                                            addr848:
                                                                                                         }
                                                                                                         §§goto(addr1217);
                                                                                                      }
                                                                                                      §§goto(addr1143);
                                                                                                   }
                                                                                                   §§goto(addr955);
                                                                                                }
                                                                                                §§push(b2Math);
                                                                                                §§push(_loc12_);
                                                                                                if(_loc23_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc24_ && param1))
                                                                                                   {
                                                                                                      addr918:
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      §§push(0.02);
                                                                                                      if(_loc23_)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc6_);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr924);
                                                                                                   §§push(§§pop().§["2§(§§pop(),§§pop()));
                                                                                                }
                                                                                                §§goto(addr918);
                                                                                             }
                                                                                          }
                                                                                          if(!_loc23_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr892);
                                                                                          §§push(1);
                                                                                       }
                                                                                       §§goto(addr1270);
                                                                                    }
                                                                                    §§goto(addr943);
                                                                                 }
                                                                                 §§goto(addr1263);
                                                                              }
                                                                           }
                                                                           §§goto(addr992);
                                                                        }
                                                                        §§goto(addr1270);
                                                                     }
                                                                     §§goto(addr942);
                                                                  }
                                                                  §§goto(addr892);
                                                               }
                                                               §§goto(addr1263);
                                                            }
                                                            §§goto(addr707);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr994);
                                                      }
                                                      §§goto(addr1160);
                                                   }
                                                   §§goto(addr755);
                                                }
                                                §§goto(addr811);
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop().Evaluate(§§pop(),§§pop()));
                                                if(_loc23_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc23_ || b2TimeOfImpact)
                                                   {
                                                      §§goto(addr987);
                                                      §§push(§§pop());
                                                   }
                                                   §§goto(addr988);
                                                }
                                                §§goto(addr1184);
                                             }
                                             addr975:
                                          }
                                          break;
                                       }
                                       §§goto(addr973);
                                    }
                                    addr770:
                                    while(true)
                                    {
                                       §§goto(addr975);
                                    }
                                 }
                              }
                              continue;
                           }
                           addr1263:
                           if(_loc10_ == _loc9_)
                           {
                              if(_loc23_)
                              {
                                 addr1270:
                                 b2_toiMaxIters = b2Math.§["2§(b2_toiMaxIters,_loc10_);
                                 addr1268:
                              }
                              addr1277:
                              return _loc8_;
                              addr1276:
                           }
                           continue loop1;
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
      }
   }
}
