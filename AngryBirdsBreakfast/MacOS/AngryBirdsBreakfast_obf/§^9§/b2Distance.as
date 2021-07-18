package §^9§
{
   import §"y§.*;
   import §'F§.*;
   import §6Z§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §9!@§:b2Simplex;
      
      private static var §^l§:Vector.<int>;
      
      private static var §`n§:Vector.<int>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §9!@§ = new b2Simplex();
            while(true)
            {
               §^l§ = new Vector.<int>(3);
               while(!(_loc1_ && _loc1_))
               {
                  §`n§ = new Vector.<int>(3);
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §'T§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc29_)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!_loc28_)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc28_ && param1))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§2J§;
         var _loc5_:b2DistanceProxy = param3.§4"$§;
         var _loc6_:b2Transform = param3.§'"-§;
         var _loc7_:b2Transform = param3.§>!r§;
         var _loc8_:b2Simplex;
         (_loc8_ = §9!@§).§^!0§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§-!L§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §^l§;
         var _loc12_:Vector.<int> = §`n§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§&!#§()).§<T§());
         if(_loc29_ || param2)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         var _loc19_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc19_);
            loop1:
            while(true)
            {
               §§push(_loc10_);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc28_ && b2Distance))
                     {
                        §§goto(addr711);
                     }
                     §§goto(addr719);
                  }
                  else
                  {
                     §§push(_loc8_.§=r§);
                     if(!(_loc28_ && param1))
                     {
                        §§push(int(§§pop()));
                        if(_loc29_)
                        {
                           _loc13_ = §§pop();
                           if(_loc29_)
                           {
                              §§push(0);
                              if(_loc29_ || param1)
                              {
                                 _loc17_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc17_);
                                       if(!_loc29_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(_loc13_);
                                       if(!(_loc29_ || param1))
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                          if(_loc29_ || param1)
                                          {
                                             _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                             if(!_loc28_)
                                             {
                                                _loc17_++;
                                                §§goto(addr188);
                                             }
                                             else
                                             {
                                                §§goto(addr866);
                                             }
                                          }
                                          break;
                                       }
                                       if(!(_loc28_ && param3))
                                       {
                                          if(_loc28_ && param1)
                                          {
                                             addr188:
                                             if(!_loc28_)
                                             {
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          §§push(_loc8_.§=r§);
                                          if(!_loc28_)
                                          {
                                             addr254:
                                             _loc26_ = §§pop();
                                             if(!(_loc28_ && param2))
                                             {
                                                §§push(1);
                                                if(!(_loc28_ && b2Distance))
                                                {
                                                   §§push(_loc26_);
                                                   if(_loc29_ || param2)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc29_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc29_ || param1))
                                                            {
                                                               addr307:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr313:
                                                            §§push(2);
                                                            if(_loc29_)
                                                            {
                                                               addr316:
                                                            }
                                                         }
                                                         addr321:
                                                         if(_loc28_ && b2Distance)
                                                         {
                                                            continue loop1;
                                                         }
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               break;
                                                            case 1:
                                                               _loc8_.Solve2();
                                                               addr139:
                                                               break;
                                                               addr185:
                                                            case 2:
                                                               _loc8_.Solve3();
                                                               if(_loc29_ || param2)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr840);
                                                            default:
                                                               b2Settings.b2Assert(false);
                                                               if(!_loc28_)
                                                               {
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr185);
                                                                  }
                                                                  §§goto(addr139);
                                                               }
                                                         }
                                                         §§push(_loc8_.§=r§);
                                                         if(!(_loc29_ || param2))
                                                         {
                                                            continue loop1;
                                                         }
                                                         addr346:
                                                         §§push(3);
                                                         if(!(_loc29_ || param3))
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               addr362:
                                                               §§goto(addr711);
                                                            }
                                                            §§goto(addr866);
                                                         }
                                                         else
                                                         {
                                                            §§push((_loc18_ = _loc8_.§&!#§()).§<T§());
                                                            if(!(_loc28_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc29_ || b2Distance)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     if(!(_loc28_ && b2Distance))
                                                                     {
                                                                        addr396:
                                                                        if(§§pop() > _loc15_)
                                                                        {
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr399:
                                                                              §§push(_loc16_);
                                                                              if(_loc29_)
                                                                              {
                                                                                 addr402:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc15_ = §§pop();
                                                                           }
                                                                           if((_loc20_ = _loc8_.§,!%§()).§<T§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                           {
                                                                              §§goto(addr711);
                                                                           }
                                                                           else
                                                                           {
                                                                              (_loc21_ = _loc9_[_loc8_.§=r§]).indexA = _loc4_.§8!'§(b2Math.§3r§(_loc6_.R,_loc20_.§4l§()));
                                                                              if(!(_loc28_ && b2Distance))
                                                                              {
                                                                                 _loc21_.§1?§ = b2Math.§!v§(_loc6_,_loc4_.§0K§(_loc21_.indexA));
                                                                                 if(_loc29_ || param2)
                                                                                 {
                                                                                    _loc21_.indexB = _loc5_.§8!'§(b2Math.§3r§(_loc7_.R,_loc20_));
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       _loc21_.§[!T§ = b2Math.§!v§(_loc7_,_loc5_.§0K§(_loc21_.indexB));
                                                                                       if(_loc28_ && b2Distance)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr447:
                                                                                       _loc21_.§%6§ = b2Math.§";§(_loc21_.§[!T§,_loc21_.§1?§);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       _loc19_++;
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr447);
                                                                                          }
                                                                                          §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                          }
                                                                                          _loc27_ = §§pop();
                                                                                          if(_loc29_ || param1)
                                                                                          {
                                                                                             _loc26_.b2_gjkIters = _loc27_;
                                                                                          }
                                                                                          if(!(_loc28_ && param1))
                                                                                          {
                                                                                             addr654:
                                                                                             _loc22_ = false;
                                                                                             addr651:
                                                                                             _loc17_ = 0;
                                                                                             addr655:
                                                                                             addr652:
                                                                                             if(_loc17_ < _loc13_)
                                                                                             {
                                                                                                addr632:
                                                                                                §§push(_loc21_.indexA);
                                                                                                if(_loc29_ || param1)
                                                                                                {
                                                                                                   addr643:
                                                                                                   §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                   if(§§pop() == _loc11_[_loc17_])
                                                                                                   {
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr648:
                                                                                                         §§push(_loc21_.indexB);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                               if(_loc29_ || b2Distance)
                                                                                                               {
                                                                                                                  addr576:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc29_ || param2)
                                                                                                                        {
                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                           {
                                                                                                                              addr604:
                                                                                                                              §§push(true);
                                                                                                                              if(_loc29_ || param1)
                                                                                                                              {
                                                                                                                                 addr612:
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    if(_loc29_)
                                                                                                                                    {
                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                       if(_loc29_ || param1)
                                                                                                                                       {
                                                                                                                                          if(_loc28_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr648);
                                                                                                                                          }
                                                                                                                                          addr666:
                                                                                                                                          if(!_loc22_)
                                                                                                                                          {
                                                                                                                                             §§push((_loc26_ = _loc8_).§=r§);
                                                                                                                                             if(!(_loc28_ && b2Distance))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + 1);
                                                                                                                                             }
                                                                                                                                             _loc27_ = §§pop();
                                                                                                                                             if(_loc29_ || param1)
                                                                                                                                             {
                                                                                                                                                _loc26_.§=r§ = _loc27_;
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          if(_loc28_ && b2Distance)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          addr675:
                                                                                                                                          addr711:
                                                                                                                                          b2_gjkMaxIters = b2Math.§"!8§(b2_gjkMaxIters,_loc19_);
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             _loc8_.§^!h§(param1.§=![§,param1.§;o§);
                                                                                                                                             param1.§1_§ = b2Math.§";§(param1.§=![§,param1.§;o§).Length();
                                                                                                                                             param1.§5!E§ = _loc19_;
                                                                                                                                             addr866:
                                                                                                                                             if(!(_loc28_ && b2Distance))
                                                                                                                                             {
                                                                                                                                                _loc8_.§"!'§(param2);
                                                                                                                                                addr861:
                                                                                                                                                if(param3.§28§)
                                                                                                                                                {
                                                                                                                                                   addr845:
                                                                                                                                                   if(!(_loc28_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr855:
                                                                                                                                                      _loc23_ = _loc4_.§,!;§;
                                                                                                                                                      break loop2;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr861);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1180);
                                                                                                                                             }
                                                                                                                                             addr884:
                                                                                                                                             §§goto(addr884);
                                                                                                                                             addr891:
                                                                                                                                             addr719:
                                                                                                                                          }
                                                                                                                                          addr755:
                                                                                                                                          §§push(param1);
                                                                                                                                          §§push(param1.§1_§);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             if(_loc29_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + _loc24_);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().§1_§ = §§pop();
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             addr777:
                                                                                                                                             §§push(param1.§1_§);
                                                                                                                                             if(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                addr795:
                                                                                                                                                §§push(_loc23_);
                                                                                                                                                if(!(_loc28_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + _loc24_);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      addr799:
                                                                                                                                                      §§pop();
                                                                                                                                                      addr800:
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc28_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§1_§);
                                                                                                                                                            if(!(_loc28_ && b2Distance))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > Number.MIN_VALUE);
                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr744:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc29_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr755);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr800);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr755);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc18_ = new b2Vec2());
                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                        if(_loc29_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1.§=![§.x);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + param1.§;o§.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§=![§.y);
                                                                                                                                                                              if(_loc29_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + param1.§;o§.y);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§=![§);
                                                                                                                                                                              if(_loc29_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§;o§);
                                                                                                                                                                                 if(!(_loc28_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_.x);
                                                                                                                                                                                    if(_loc29_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc26_ = §§pop();
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc26_);
                                                                                                                                                                                                if(_loc29_ || b2Distance)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc29_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      §§goto(addr1177);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(!(_loc28_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1177:
                                                                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1156:
                                                                                                                                                                                                         param1.§;o§.y = _loc26_ = _loc18_.y;
                                                                                                                                                                                                         addr1158:
                                                                                                                                                                                                         §§push(param1.§=![§);
                                                                                                                                                                                                         §§push(_loc26_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      param1.§1_§ = 0;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1180);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1158);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1156);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1180);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1177);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr795);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr799);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr855);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr777);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr891);
                                                                                                                                                      }
                                                                                                                                                      addr824:
                                                                                                                                                      if(_loc29_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc29_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               addr840:
                                                                                                                                                               §§goto(addr777);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr866);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr845);
                                                                                                                                                      }
                                                                                                                                                      break loop2;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr744);
                                                                                                                                                }
                                                                                                                                                §§goto(addr861);
                                                                                                                                             }
                                                                                                                                             addr816:
                                                                                                                                             if(!(_loc28_ && param2))
                                                                                                                                             {
                                                                                                                                                _loc24_ = §§pop();
                                                                                                                                                §§goto(addr824);
                                                                                                                                             }
                                                                                                                                             §§goto(addr855);
                                                                                                                                          }
                                                                                                                                          (_loc25_ = b2Math.§";§(param1.§;o§,param1.§=![§)).Normalize();
                                                                                                                                          if(_loc29_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1036:
                                                                                                                                             addr1025:
                                                                                                                                             addr1037:
                                                                                                                                             addr1024:
                                                                                                                                             addr1022:
                                                                                                                                             §§push(param1.§=![§);
                                                                                                                                             §§push(param1.§=![§.x);
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             if(!(_loc28_ && param2))
                                                                                                                                             {
                                                                                                                                                addr1035:
                                                                                                                                                §§push(§§pop() * _loc25_.x);
                                                                                                                                             }
                                                                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                                                                             addr1038:
                                                                                                                                             §§push(param1.§=![§);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§=![§);
                                                                                                                                                if(_loc29_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                            if(!(_loc28_ && param3))
                                                                                                                                                            {
                                                                                                                                                               if(_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc25_.y);
                                                                                                                                                                  if(_loc29_ || b2Distance)
                                                                                                                                                                  {
                                                                                                                                                                     addr1011:
                                                                                                                                                                     §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                                                                     addr1012:
                                                                                                                                                                     if(!(_loc28_ && b2Distance))
                                                                                                                                                                     {
                                                                                                                                                                        addr947:
                                                                                                                                                                        addr953:
                                                                                                                                                                        addr960:
                                                                                                                                                                        addr959:
                                                                                                                                                                        addr952:
                                                                                                                                                                        addr950:
                                                                                                                                                                        §§push(param1.§;o§);
                                                                                                                                                                        §§push(param1.§;o§.x);
                                                                                                                                                                        §§push(_loc24_);
                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           addr958:
                                                                                                                                                                           §§push(§§pop() * _loc25_.x);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().x = §§pop() - §§pop();
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(param1.§;o§);
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.§;o§);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc25_.y);
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr932:
                                                                                                                                                                                             §§push(§§pop() - §§pop() * §§pop());
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc28_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr945);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr947);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr953);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr960);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr958);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr959);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr932);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr952);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1012);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1038);
                                                                                                                                                                     addr1010:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1035);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1036);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1010);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1025);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1037);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1011);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1024);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1022);
                                                                                                                                          }
                                                                                                                                          addr945:
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr947);
                                                                                                                                          }
                                                                                                                                          addr1180:
                                                                                                                                          return;
                                                                                                                                          addr626:
                                                                                                                                       }
                                                                                                                                       §§goto(addr666);
                                                                                                                                    }
                                                                                                                                    §§goto(addr654);
                                                                                                                                 }
                                                                                                                                 §§goto(addr643);
                                                                                                                              }
                                                                                                                              §§goto(addr666);
                                                                                                                           }
                                                                                                                           §§goto(addr655);
                                                                                                                        }
                                                                                                                        §§goto(addr652);
                                                                                                                     }
                                                                                                                     §§goto(addr666);
                                                                                                                  }
                                                                                                                  _loc17_++;
                                                                                                                  if(_loc29_ || param2)
                                                                                                                  {
                                                                                                                     addr556:
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr648);
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                                  §§goto(addr675);
                                                                                                               }
                                                                                                               §§goto(addr612);
                                                                                                            }
                                                                                                            §§goto(addr632);
                                                                                                         }
                                                                                                         §§goto(addr654);
                                                                                                      }
                                                                                                      §§goto(addr666);
                                                                                                   }
                                                                                                   §§goto(addr576);
                                                                                                }
                                                                                                §§goto(addr651);
                                                                                             }
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                §§goto(addr666);
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          §§goto(addr648);
                                                                                       }
                                                                                       §§goto(addr654);
                                                                                    }
                                                                                    §§goto(addr626);
                                                                                 }
                                                                                 §§goto(addr556);
                                                                              }
                                                                              §§goto(addr604);
                                                                           }
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     §§goto(addr402);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                         if(!(_loc28_ && b2Distance))
                                                         {
                                                            addr298:
                                                            §§push(_loc26_);
                                                            if(_loc29_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§goto(addr307);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr316);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr313);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr312:
                                                                     if(§§pop() === _loc26_)
                                                                     {
                                                                        §§goto(addr313);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(3);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr321);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr313);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr362);
                                       §§goto(addr866);
                                    }
                                    §§goto(addr861);
                                 }
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr866);
                        }
                        §§goto(addr346);
                     }
                     §§goto(addr254);
                  }
               }
               §§push(_loc5_.§,!;§);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               §§goto(addr816);
            }
         }
      }
   }
}
