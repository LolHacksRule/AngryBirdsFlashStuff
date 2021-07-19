package §%4§
{
   import §2k§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §`";§:b2Simplex;
      
      private static var §,!b§:Vector.<int>;
      
      private static var §>!S§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §`";§ = new b2Simplex();
            do
            {
               §,!b§ = new Vector.<int>(3);
               do
               {
                  §>!S§ = new Vector.<int>(3);
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_);
            
         }
      }
      
      public function b2Distance()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §0?§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         if(_loc28_ || b2Distance)
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(!(_loc29_ && b2Distance))
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!_loc29_)
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§]!0§;
         var _loc5_:b2DistanceProxy = param3.§&!`§;
         var _loc6_:b2Transform = param3.§&!-§;
         var _loc7_:b2Transform = param3.§9!k§;
         var _loc8_:b2Simplex;
         (_loc8_ = §`";§).§&"9§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§^c§;
         var _loc10_:int = 20;
         var _loc11_:Vector.<int> = §,!b§;
         var _loc12_:Vector.<int> = §>!S§;
         var _loc13_:* = 0;
         var _loc14_:b2Vec2;
         §§push((_loc14_ = _loc8_.§5!'§()).§`2§());
         if(!(_loc29_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:*;
         §§push(_loc15_ = §§pop());
         if(_loc28_)
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
                     break loop1;
                  }
                  §§push(_loc8_.§`"2§);
                  if(!(_loc29_ && param2))
                  {
                     §§push(int(§§pop()));
                     if(_loc28_)
                     {
                        addr244:
                        _loc13_ = §§pop();
                        if(_loc28_)
                        {
                           §§push(0);
                           if(!(_loc29_ && param1))
                           {
                              _loc17_ = §§pop();
                              if(!_loc29_)
                              {
                                 while(true)
                                 {
                                    §§push(_loc17_);
                                    if(!(_loc29_ && b2Distance))
                                    {
                                       §§push(_loc13_);
                                       if(!_loc29_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc28_)
                                             {
                                                §§push(_loc8_.§`"2§);
                                                if(!(_loc29_ && param2))
                                                {
                                                   break;
                                                }
                                                addr338:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                   case 1:
                                                      _loc8_.Solve2();
                                                      if(_loc28_ || param3)
                                                      {
                                                         addr346:
                                                         §§push(_loc8_.§`"2§);
                                                         if(_loc29_ && param2)
                                                         {
                                                            break loop2;
                                                         }
                                                         §§push(3);
                                                         if(_loc29_ && param1)
                                                         {
                                                            continue loop2;
                                                         }
                                                         addr363:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc29_)
                                                            {
                                                               addr685:
                                                               b2_gjkMaxIters = b2Math.§8!c§(b2_gjkMaxIters,_loc19_);
                                                               if(_loc28_ || param3)
                                                               {
                                                                  _loc8_.§6r§(param1.§3!c§,param1.§57§);
                                                                  param1.§8F§ = b2Math.§ !r§(param1.§3!c§,param1.§57§).§?!]§();
                                                                  param1.§+"6§ = _loc19_;
                                                                  _loc8_.§4!,§(param2);
                                                                  addr822:
                                                                  if(param3.§`!9§)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr1164:
                                                                  return;
                                                                  addr848:
                                                                  addr832:
                                                                  addr837:
                                                                  addr855:
                                                               }
                                                            }
                                                            addr762:
                                                            if(false)
                                                            {
                                                               addr764:
                                                               §§push(param1.§8F§);
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  if(!_loc29_)
                                                                  {
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        if(_loc28_)
                                                                        {
                                                                           addr796:
                                                                           §§push(_loc23_);
                                                                           if(_loc28_ || b2Distance)
                                                                           {
                                                                              §§push(§§pop() + _loc24_);
                                                                           }
                                                                           §§push(§§pop() > §§pop());
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              addr798:
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr801:
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       §§push(param1.§8F§);
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          §§push(§§pop() > Number.MIN_VALUE);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr711:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc28_ || param1)
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         if(_loc28_ || param3)
                                                                                                         {
                                                                                                            addr729:
                                                                                                            §§push(param1);
                                                                                                            §§push(param1.§8F§);
                                                                                                            if(_loc28_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc23_);
                                                                                                               if(_loc28_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc24_);
                                                                                                               }
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                            }
                                                                                                            §§pop().§8F§ = §§pop();
                                                                                                            addr751:
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr762);
                                                                                                                  }
                                                                                                                  §§goto(addr848);
                                                                                                               }
                                                                                                               §§goto(addr832);
                                                                                                            }
                                                                                                            §§goto(addr801);
                                                                                                         }
                                                                                                         §§goto(addr837);
                                                                                                      }
                                                                                                      addr811:
                                                                                                      if(_loc28_ || param2)
                                                                                                      {
                                                                                                         §§goto(addr764);
                                                                                                      }
                                                                                                      _loc24_ = _loc5_.§&!$§;
                                                                                                      §§goto(addr811);
                                                                                                      addr827:
                                                                                                   }
                                                                                                   §§goto(addr751);
                                                                                                }
                                                                                                §§push(_loc18_ = new b2Vec2());
                                                                                                §§push(0.5);
                                                                                                if(!(_loc29_ && param2))
                                                                                                {
                                                                                                   §§push(param1.§3!c§.x);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(§§pop() + param1.§57§.x);
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop();
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   §§push(_loc18_);
                                                                                                   §§push(0.5);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(param1.§3!c§.y);
                                                                                                      if(_loc28_ || b2Distance)
                                                                                                      {
                                                                                                         §§push(§§pop() + param1.§57§.y);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(param1.§3!c§);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(param1.§57§);
                                                                                                         if(!(_loc29_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc18_.x);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  _loc26_ = §§pop();
                                                                                                                  if(_loc28_ || param1)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(_loc26_);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 addr1140:
                                                                                                                                 param1.§57§.y = _loc26_ = _loc18_.y;
                                                                                                                                 addr1143:
                                                                                                                                 param1.§3!c§.y = _loc26_;
                                                                                                                                 if(_loc29_ && b2Distance)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr1164);
                                                                                                                              }
                                                                                                                              param1.§8F§ = 0;
                                                                                                                              §§goto(addr1164);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1143);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1140);
                                                                                                   }
                                                                                                   §§goto(addr1164);
                                                                                                }
                                                                                                §§goto(addr1140);
                                                                                             }
                                                                                             §§goto(addr796);
                                                                                          }
                                                                                          §§goto(addr798);
                                                                                       }
                                                                                       §§goto(addr764);
                                                                                       addr805:
                                                                                    }
                                                                                    §§goto(addr855);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr822);
                                                                           }
                                                                           §§goto(addr711);
                                                                        }
                                                                        addr825:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     _loc23_ = §§pop();
                                                                     §§goto(addr827);
                                                                  }
                                                               }
                                                               §§goto(addr811);
                                                            }
                                                            (_loc25_ = b2Math.§ !r§(param1.§57§,param1.§3!c§)).Normalize();
                                                            if(_loc28_)
                                                            {
                                                               addr1036:
                                                               param1.§3!c§.x += _loc23_ * _loc25_.x;
                                                               addr1037:
                                                               addr1032:
                                                               addr1035:
                                                               addr1034:
                                                               addr1031:
                                                               addr1030:
                                                               §§push(param1.§3!c§);
                                                               if(!(_loc29_ && b2Distance))
                                                               {
                                                                  §§push(param1.§3!c§);
                                                                  if(!(_loc29_ && b2Distance))
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(!(_loc29_ && param3))
                                                                     {
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           §§push(_loc23_);
                                                                           if(!(_loc29_ && param1))
                                                                           {
                                                                              §§push(_loc25_.y);
                                                                              if(!(_loc29_ && b2Distance))
                                                                              {
                                                                                 addr1000:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    if(!(_loc29_ && param3))
                                                                                    {
                                                                                       addr1015:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          addr1023:
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr926:
                                                                                             addr932:
                                                                                             addr943:
                                                                                             addr944:
                                                                                             addr931:
                                                                                             addr929:
                                                                                             §§push(param1.§57§);
                                                                                             §§push(param1.§57§.x);
                                                                                             §§push(_loc24_);
                                                                                             if(!(_loc29_ && param2))
                                                                                             {
                                                                                                addr942:
                                                                                                §§push(§§pop() * _loc25_.x);
                                                                                             }
                                                                                             §§pop().x = §§pop() - §§pop();
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                §§push(param1.§57§);
                                                                                                if(!(_loc29_ && param3))
                                                                                                {
                                                                                                   §§push(param1.§57§);
                                                                                                   if(_loc28_ || b2Distance)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc24_);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               if(!(_loc29_ && param2))
                                                                                                               {
                                                                                                                  §§push(_loc25_.y);
                                                                                                                  if(!(_loc29_ && b2Distance))
                                                                                                                  {
                                                                                                                     addr918:
                                                                                                                     §§push(§§pop() - §§pop() * §§pop());
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              §§goto(addr926);
                                                                                                                           }
                                                                                                                           §§goto(addr822);
                                                                                                                        }
                                                                                                                        §§goto(addr926);
                                                                                                                     }
                                                                                                                     §§goto(addr932);
                                                                                                                  }
                                                                                                                  §§goto(addr942);
                                                                                                               }
                                                                                                               §§goto(addr943);
                                                                                                            }
                                                                                                            §§goto(addr918);
                                                                                                         }
                                                                                                         §§goto(addr944);
                                                                                                      }
                                                                                                      §§goto(addr918);
                                                                                                   }
                                                                                                   §§goto(addr931);
                                                                                                }
                                                                                                §§goto(addr929);
                                                                                                addr947:
                                                                                             }
                                                                                             §§goto(addr1023);
                                                                                          }
                                                                                          §§goto(addr1037);
                                                                                       }
                                                                                       §§goto(addr1036);
                                                                                    }
                                                                                    §§goto(addr1032);
                                                                                 }
                                                                                 §§goto(addr1035);
                                                                              }
                                                                              §§goto(addr1034);
                                                                           }
                                                                           §§goto(addr1000);
                                                                        }
                                                                        §§goto(addr1031);
                                                                     }
                                                                     §§goto(addr1015);
                                                                  }
                                                                  §§goto(addr1030);
                                                               }
                                                               addr1028:
                                                               §§goto(addr1028);
                                                            }
                                                            §§goto(addr947);
                                                         }
                                                         else
                                                         {
                                                            §§push((_loc18_ = _loc8_.§5!'§()).§`2§());
                                                            if(_loc28_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc29_ && b2Distance))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc29_)
                                                                  {
                                                                     _loc16_ = §§pop();
                                                                     addr407:
                                                                     if(_loc28_)
                                                                     {
                                                                        addr389:
                                                                        §§push(_loc15_);
                                                                     }
                                                                     _loc15_ = §§pop();
                                                                     if((_loc20_ = _loc8_.§3W§()).§`2§() < Number.MIN_VALUE * Number.MIN_VALUE)
                                                                     {
                                                                        §§goto(addr685);
                                                                     }
                                                                     else
                                                                     {
                                                                        (_loc21_ = _loc9_[_loc8_.§`"2§]).indexA = _loc4_.§5R§(b2Math.§#"-§(_loc6_.R,_loc20_.§5E§()));
                                                                        if(_loc28_)
                                                                        {
                                                                           _loc21_.§9§ = b2Math.§#!K§(_loc6_,_loc4_.§"]§(_loc21_.indexA));
                                                                           if(!_loc29_)
                                                                           {
                                                                              _loc21_.indexB = _loc5_.§5R§(b2Math.§#"-§(_loc7_.R,_loc20_));
                                                                              if(_loc28_)
                                                                              {
                                                                                 _loc21_.§+m§ = b2Math.§#!K§(_loc7_,_loc5_.§"]§(_loc21_.indexB));
                                                                                 if(_loc28_ || param3)
                                                                                 {
                                                                                    loop4:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc21_.w = b2Math.§ !r§(_loc21_.§+m§,_loc21_.§9§);
                                                                                       if(!(_loc29_ && param3))
                                                                                       {
                                                                                          _loc19_++;
                                                                                          if(!(_loc29_ && param1))
                                                                                          {
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                                   if(_loc28_ || b2Distance)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                   }
                                                                                                   _loc27_ = §§pop();
                                                                                                }
                                                                                                continue loop4;
                                                                                                if(_loc28_ || param1)
                                                                                                {
                                                                                                   _loc26_.b2_gjkIters = _loc27_;
                                                                                                }
                                                                                                if(!(_loc29_ && param2))
                                                                                                {
                                                                                                   §§push(false);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc22_ = §§pop();
                                                                                                      addr649:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         addr645:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc17_ = §§pop();
                                                                                                            break loop14;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr648:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                loop8:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= _loc13_)
                                                                                                      {
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr655:
                                                                                                         §§push(_loc22_);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(_loc21_.indexA);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc28_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr634:
                                                                                                                  §§pop();
                                                                                                                  if(_loc28_ || b2Distance)
                                                                                                                  {
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr655);
                                                                                                               }
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(true);
                                                                                                                     if(!(_loc29_ && b2Distance))
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              break loop7;
                                                                                                                           }
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           §§goto(addr655);
                                                                                                                        }
                                                                                                                        addr606:
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§push((_loc26_ = _loc8_).§`"2§);
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                        }
                                                                                                                        _loc27_ = §§pop();
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           _loc26_.§`"2§ = _loc27_;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc29_ && param3)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr664:
                                                                                                                     §§goto(addr685);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     _loc17_++;
                                                                                                                     if(_loc28_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc21_.indexB);
                                                                                                                              if(_loc29_ && param2)
                                                                                                                              {
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                              §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 if(_loc29_ && param3)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§goto(addr648);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr606);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr634);
                                                                                                                        }
                                                                                                                        §§goto(addr649);
                                                                                                                     }
                                                                                                                     §§goto(addr664);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            §§goto(addr656);
                                                                                                         }
                                                                                                         §§goto(addr645);
                                                                                                      }
                                                                                                      §§goto(addr656);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr449:
                                                                                          }
                                                                                          §§goto(addr664);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr559);
                                                                                       §§goto(addr634);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr655);
                                                                              }
                                                                              §§goto(addr649);
                                                                           }
                                                                           §§goto(addr611);
                                                                        }
                                                                        §§goto(addr449);
                                                                     }
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        addr398:
                                                                        §§push(_loc16_);
                                                                        if(!(_loc29_ && param3))
                                                                        {
                                                                           §§goto(addr407);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     §§goto(addr407);
                                                                  }
                                                                  §§goto(addr398);
                                                               }
                                                               §§goto(addr389);
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         addr136:
                                                      }
                                                      §§goto(addr822);
                                                   case 2:
                                                      _loc8_.Solve3();
                                                      if(!_loc28_)
                                                      {
                                                      }
                                                      break;
                                                   default:
                                                      b2Settings.b2Assert(false);
                                                      if(!_loc29_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr136);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr346);
                                                         }
                                                      }
                                                      §§goto(addr762);
                                                }
                                                §§goto(addr825);
                                                §§push(_loc4_.§&!$§);
                                             }
                                             §§goto(addr346);
                                          }
                                          else
                                          {
                                             _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                             if(_loc28_ || param3)
                                             {
                                                _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                if(!(_loc29_ && param3))
                                                {
                                                   _loc17_++;
                                                   if(!(_loc29_ && b2Distance))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr822);
                                                }
                                                else
                                                {
                                                   §§goto(addr685);
                                                }
                                             }
                                          }
                                          §§goto(addr729);
                                       }
                                       §§goto(addr363);
                                    }
                                    break;
                                 }
                                 addr258:
                                 _loc26_ = §§pop();
                                 if(_loc28_ || param1)
                                 {
                                    §§push(1);
                                    if(!_loc29_)
                                    {
                                       §§push(_loc26_);
                                       if(_loc28_ || b2Distance)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc29_)
                                             {
                                                §§push(0);
                                                if(_loc29_)
                                                {
                                                   addr292:
                                                   §§push(_loc26_);
                                                   if(_loc28_ || param3)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc28_)
                                                         {
                                                            addr303:
                                                            §§push(1);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               addr330:
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§goto(addr338);
                                                               }
                                                               §§goto(addr355);
                                                               addr311:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr317:
                                                            §§push(2);
                                                            if(_loc28_ || param2)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                         if(_loc28_)
                                                         {
                                                            addr316:
                                                            if(§§pop() === _loc26_)
                                                            {
                                                               §§goto(addr317);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr330);
                                                               §§push(3);
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr330);
                                             }
                                             §§goto(addr317);
                                          }
                                          else
                                          {
                                             §§push(2);
                                             if(_loc28_ || param3)
                                             {
                                                §§goto(addr292);
                                             }
                                          }
                                       }
                                       §§goto(addr316);
                                    }
                                    §§goto(addr311);
                                 }
                                 §§goto(addr303);
                              }
                              §§goto(addr805);
                           }
                           §§goto(addr355);
                        }
                        §§goto(addr822);
                     }
                     §§goto(addr258);
                  }
                  §§goto(addr244);
               }
            }
            if(_loc28_)
            {
               §§goto(addr685);
            }
            §§goto(addr729);
         }
      }
   }
}
