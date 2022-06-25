package §!m§
{
   import §+!g§.*;
   import §0!3§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §+e§:b2Simplex;
      
      private static var §<!+§:Vector.<int>;
      
      private static var §^R§:Vector.<int>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Distance)
         {
            §+e§ = new b2Simplex();
         }
         while(true)
         {
            §<!+§ = new Vector.<int>(3);
            while(!_loc2_)
            {
               §^R§ = new Vector.<int>(3);
               if(!_loc2_)
               {
                  return;
               }
            }
         }
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
      
      public static function §^!g§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc17_:* = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:* = false;
         var _loc23_:Number = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Vec2 = null;
         if(!(_loc29_ && param3))
         {
            var _loc26_:*;
            §§push((_loc26_ = §§findproperty(b2_gjkCalls)).b2_gjkCalls);
            if(_loc28_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc27_:* = §§pop();
            if(!(_loc29_ && param1))
            {
               _loc26_.b2_gjkCalls = _loc27_;
            }
         }
         var _loc4_:b2DistanceProxy = param3.§'[§;
         var _loc5_:b2DistanceProxy = param3.§4P§;
         var _loc6_:b2Transform = param3.§;!5§;
         var _loc7_:b2Transform = param3.§'G§;
         var _loc8_:b2Simplex = §+e§;
         if(_loc28_ || b2Distance)
         {
            _loc8_.§@!=§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         }
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§`!a§;
         §§push(20);
         if(_loc28_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:Vector.<int> = §<!+§;
         var _loc12_:Vector.<int> = §^R§;
         §§push(0);
         if(_loc28_)
         {
            §§push(int(§§pop()));
         }
         var _loc13_:* = §§pop();
         var _loc14_:b2Vec2 = _loc8_.§-!S§();
         §§push(_loc14_.§3!M§());
         if(!_loc29_)
         {
            §§push(Number(§§pop()));
         }
         var _loc15_:* = §§pop();
         §§push(_loc15_);
         if(!(_loc29_ && b2Distance))
         {
            §§push(Number(§§pop()));
         }
         var _loc16_:* = §§pop();
         §§push(0);
         if(!(_loc29_ && b2Distance))
         {
            §§push(int(§§pop()));
         }
         var _loc19_:* = §§pop();
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
                     if(_loc28_ || param3)
                     {
                        break;
                     }
                     param1.distance = b2Math.§2!C§(param1.§in §,param1.§]$§).§[!K§();
                     param1.§%,§ = _loc19_;
                     addr997:
                     addr989:
                  }
                  else
                  {
                     §§push(_loc8_.§`!@§);
                     if(_loc28_)
                     {
                        §§push(int(§§pop()));
                        if(!_loc29_)
                        {
                           _loc13_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    _loc17_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc17_);
                                          if(!_loc29_)
                                          {
                                             if(!(_loc29_ && param2))
                                             {
                                                if(!(_loc28_ || param2))
                                                {
                                                   continue loop5;
                                                }
                                                §§push(_loc13_);
                                                if(_loc29_)
                                                {
                                                   continue loop2;
                                                }
                                                if(§§pop() >= §§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!(_loc28_ || param1))
                                                      {
                                                         addr239:
                                                         §§push(_loc17_ + 1);
                                                         if(!(_loc29_ && param2))
                                                         {
                                                            §§push(int(§§pop()));
                                                            if(_loc29_)
                                                            {
                                                               break loop7;
                                                            }
                                                         }
                                                         continue loop4;
                                                         addr274:
                                                      }
                                                      if(_loc29_ && param1)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(_loc8_.§`!@§);
                                                      if(_loc28_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc26_ = §§pop();
                                                            if(!(_loc29_ && param2))
                                                            {
                                                               §§push(1);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(_loc26_);
                                                                  if(_loc28_)
                                                                  {
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc29_)
                                                                           {
                                                                              addr374:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr344:
                                                                           §§push(1);
                                                                           if(!(_loc28_ || param2))
                                                                           {
                                                                              addr368:
                                                                           }
                                                                        }
                                                                        addr376:
                                                                        if(!(_loc29_ && b2Distance))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    break;
                                                                                 case 1:
                                                                                    _loc8_.Solve2();
                                                                                    addr182:
                                                                                    break;
                                                                                    addr236:
                                                                                 case 2:
                                                                                    _loc8_.Solve3();
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       addr972:
                                                                                       if(param3.§>L§)
                                                                                       {
                                                                                          if(!(_loc29_ && b2Distance))
                                                                                          {
                                                                                             addr963:
                                                                                             _loc23_ = _loc4_.§!@§;
                                                                                          }
                                                                                          addr964:
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             addr937:
                                                                                             §§push(_loc5_.§!@§);
                                                                                             if(_loc28_ || b2Distance)
                                                                                             {
                                                                                                addr945:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   _loc24_ = §§pop();
                                                                                                   addr899:
                                                                                                   addr948:
                                                                                                   §§push(param1.distance);
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      §§push(_loc23_);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(§§pop() + _loc24_);
                                                                                                      }
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(_loc28_ || b2Distance)
                                                                                                      {
                                                                                                         if(_loc28_ || param1)
                                                                                                         {
                                                                                                            addr925:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr930:
                                                                                                               §§pop();
                                                                                                               addr931:
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  §§push(param1.distance);
                                                                                                                  if(_loc28_ || b2Distance)
                                                                                                                  {
                                                                                                                     if(!(_loc29_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() > Number.MIN_VALUE);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           if(_loc28_ || b2Distance)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                           §§goto(addr925);
                                                                                                                        }
                                                                                                                        if(_loc28_ || param1)
                                                                                                                        {
                                                                                                                           addr846:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 if(!(_loc29_ && param1))
                                                                                                                                 {
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       if(_loc28_ || b2Distance)
                                                                                                                                       {
                                                                                                                                          §§push(param1);
                                                                                                                                          §§push(param1.distance);
                                                                                                                                          if(!(_loc29_ && b2Distance))
                                                                                                                                          {
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + _loc24_);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                          }
                                                                                                                                          §§pop().distance = §§pop();
                                                                                                                                          addr888:
                                                                                                                                          if(_loc28_ || param3)
                                                                                                                                          {
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr899);
                                                                                                                                                }
                                                                                                                                                _loc25_ = b2Math.§2!C§(param1.§]$§,param1.§in §);
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   _loc25_.Normalize();
                                                                                                                                                   addr1168:
                                                                                                                                                   addr1148:
                                                                                                                                                   addr1146:
                                                                                                                                                   §§push(param1.§in §);
                                                                                                                                                   §§push(param1.§in §.x);
                                                                                                                                                   if(!(_loc29_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr1167:
                                                                                                                                                      §§push(_loc23_);
                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr1166:
                                                                                                                                                         §§push(§§pop() * _loc25_.x);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   addr1169:
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§in §);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§in §);
                                                                                                                                                         if(!(_loc29_ && b2Distance))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(!(_loc29_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc23_);
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc25_.y);
                                                                                                                                                                  if(!(_loc29_ && b2Distance))
                                                                                                                                                                  {
                                                                                                                                                                     addr1126:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc28_ || b2Distance)
                                                                                                                                                                     {
                                                                                                                                                                        addr1134:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc28_ || param3)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           addr1085:
                                                                                                                                                                           param1.§]$§.x -= _loc24_ * _loc25_.x;
                                                                                                                                                                           addr1074:
                                                                                                                                                                           addr1080:
                                                                                                                                                                           addr1081:
                                                                                                                                                                           addr1083:
                                                                                                                                                                           addr1084:
                                                                                                                                                                           addr1079:
                                                                                                                                                                           addr1077:
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§]$§);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.§]$§);
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc24_);
                                                                                                                                                                                          if(!_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc25_.y);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1042:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1050:
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            if(!(_loc29_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(false)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1074);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1319);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1074);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1080);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1085);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1081);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1083);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1084);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1042);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1050);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1079);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1077);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1169);
                                                                                                                                                                           }
                                                                                                                                                                           addr1142:
                                                                                                                                                                           §§goto(addr1142);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1168);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1167);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1166);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1126);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1134);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1148);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1146);
                                                                                                                                                   }
                                                                                                                                                   addr1175:
                                                                                                                                                   §§goto(addr1175);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1085);
                                                                                                                                             }
                                                                                                                                             §§goto(addr997);
                                                                                                                                          }
                                                                                                                                          break loop8;
                                                                                                                                       }
                                                                                                                                       §§goto(addr972);
                                                                                                                                    }
                                                                                                                                    §§goto(addr948);
                                                                                                                                 }
                                                                                                                                 §§goto(addr931);
                                                                                                                              }
                                                                                                                              §§goto(addr888);
                                                                                                                           }
                                                                                                                           _loc18_ = new b2Vec2();
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              §§push(_loc18_);
                                                                                                                              §§push(0.5);
                                                                                                                              if(!(_loc29_ && b2Distance))
                                                                                                                              {
                                                                                                                                 §§push(param1.§in §.x);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + param1.§]$§.x);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                              }
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              if(!(_loc29_ && param1))
                                                                                                                              {
                                                                                                                                 addr1210:
                                                                                                                                 §§push(_loc18_);
                                                                                                                                 §§push(0.5);
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§in §.y);
                                                                                                                                    if(!(_loc29_ && param3))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + param1.§]$§.y);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc28_ || b2Distance)
                                                                                                                                 {
                                                                                                                                    addr1237:
                                                                                                                                    §§push(param1.§in §);
                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§]$§);
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc18_.x);
                                                                                                                                          if(!(_loc29_ && param3))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                _loc26_ = §§pop();
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc26_);
                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc28_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc28_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr1310:
                                                                                                                                                               param1.§]$§.y = _loc26_ = _loc18_.y;
                                                                                                                                                               addr1312:
                                                                                                                                                               §§push(param1.§in §);
                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1319);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            addr1316:
                                                                                                                                                            param1.distance = 0;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1319);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1312);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr1310);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1316);
                                                                                                                              }
                                                                                                                              §§goto(addr1237);
                                                                                                                           }
                                                                                                                           §§goto(addr1210);
                                                                                                                        }
                                                                                                                        §§goto(addr930);
                                                                                                                     }
                                                                                                                     §§goto(addr937);
                                                                                                                  }
                                                                                                                  §§goto(addr899);
                                                                                                                  addr933:
                                                                                                               }
                                                                                                               §§goto(addr964);
                                                                                                            }
                                                                                                            §§goto(addr846);
                                                                                                         }
                                                                                                         §§goto(addr972);
                                                                                                      }
                                                                                                      §§goto(addr925);
                                                                                                   }
                                                                                                   §§goto(addr945);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr963);
                                                                                          }
                                                                                          _loc8_.§1B§(param2);
                                                                                          addr977:
                                                                                          §§goto(addr972);
                                                                                          addr977:
                                                                                       }
                                                                                       addr1319:
                                                                                    }
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop8;
                                                                                    return;
                                                                                 default:
                                                                                    b2Settings.b2Assert(false);
                                                                                    if(!(_loc29_ && param2))
                                                                                    {
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(true)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                       §§goto(addr182);
                                                                                    }
                                                                                    §§goto(addr977);
                                                                              }
                                                                              §§push(_loc8_.§`!@§);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           addr384:
                                                                        }
                                                                        break loop7;
                                                                     }
                                                                     §§push(2);
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(_loc26_);
                                                                        if(!_loc29_)
                                                                        {
                                                                           addr341:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§goto(addr344);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr371:
                                                                                 §§push(3);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    §§goto(addr374);
                                                                                 }
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(3);
                                                                              if(_loc28_)
                                                                              {
                                                                                 §§push(_loc26_);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                        }
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc29_ && b2Distance))
                                                                           {
                                                                              §§push(2);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§goto(addr368);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr371);
                                                                           }
                                                                        }
                                                                        else if(false)
                                                                        {
                                                                           §§goto(addr371);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(3);
                                                                        }
                                                                        §§goto(addr376);
                                                                     }
                                                                     §§goto(addr368);
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr371);
                                                         }
                                                         addr314:
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   §§goto(addr989);
                                                }
                                                else
                                                {
                                                   _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
                                                   if(_loc28_ || b2Distance)
                                                   {
                                                      _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
                                                      §§goto(addr274);
                                                   }
                                                }
                                                §§goto(addr933);
                                             }
                                             §§goto(addr239);
                                          }
                                          break;
                                          addr265:
                                       }
                                       addr391:
                                       §§push(3);
                                       if(!(_loc28_ || param3))
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc28_ || param3)
                                          {
                                             break loop2;
                                          }
                                          break loop2;
                                       }
                                       _loc18_ = _loc8_.§-!S§();
                                       if(!_loc29_)
                                       {
                                          §§push(_loc18_.§3!M§());
                                          if(_loc28_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!_loc29_)
                                             {
                                                _loc16_ = §§pop();
                                                if(!_loc29_)
                                                {
                                                   §§push(_loc16_);
                                                   if(!_loc29_)
                                                   {
                                                      addr427:
                                                      if(§§pop() > _loc15_)
                                                      {
                                                         addr441:
                                                         if(_loc28_)
                                                         {
                                                            addr431:
                                                            §§push(_loc16_);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc20_ = _loc8_.§;r§();
                                                         if(!(_loc29_ && param1))
                                                         {
                                                            if(_loc20_.§3!M§() >= Number.MIN_VALUE * Number.MIN_VALUE)
                                                            {
                                                               _loc21_ = _loc9_[_loc8_.§`!@§];
                                                               if(!_loc29_)
                                                               {
                                                                  _loc21_.indexA = _loc4_.§8!N§(b2Math.§[p§(_loc6_.R,_loc20_.§ !%§()));
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     _loc21_.§ !E§ = b2Math.§&!M§(_loc6_,_loc4_.§3S§(_loc21_.indexA));
                                                                     if(_loc28_)
                                                                     {
                                                                        _loc21_.indexB = _loc5_.§8!N§(b2Math.§[p§(_loc7_.R,_loc20_));
                                                                        _loc21_.§2!2§ = b2Math.§&!M§(_loc7_,_loc5_.§3S§(_loc21_.indexB));
                                                                        addr513:
                                                                        if(!_loc29_)
                                                                        {
                                                                           addr487:
                                                                           _loc21_.§^[§ = b2Math.§2!C§(_loc21_.§2!2§,_loc21_.§ !E§);
                                                                           if(!_loc28_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(_loc19_);
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr482:
                                                                                       _loc19_ = §§pop();
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr487);
                                                                                          }
                                                                                          §§push((_loc26_ = §§findproperty(b2_gjkIters)).b2_gjkIters);
                                                                                          if(!(_loc29_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                          }
                                                                                          _loc27_ = §§pop();
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             _loc26_.b2_gjkIters = _loc27_;
                                                                                          }
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             addr738:
                                                                                             _loc22_ = Boolean(false);
                                                                                             if(!(_loc29_ && param2))
                                                                                             {
                                                                                                addr734:
                                                                                                _loc17_ = int(0);
                                                                                                addr747:
                                                                                                addr733:
                                                                                                addr735:
                                                                                                if(_loc17_ < _loc13_)
                                                                                                {
                                                                                                   §§push(_loc21_.indexA);
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      addr699:
                                                                                                      §§push(§§pop() == _loc11_[_loc17_]);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            addr708:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc29_ && param2))
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr720:
                                                                                                                  §§pop();
                                                                                                                  if(_loc28_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        addr625:
                                                                                                                        §§push(_loc21_.indexB);
                                                                                                                        if(!(_loc29_ && b2Distance))
                                                                                                                        {
                                                                                                                           §§push(§§pop() == _loc12_[_loc17_]);
                                                                                                                           if(_loc28_ || param2)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(!_loc29_)
                                                                                                                              {
                                                                                                                                 addr660:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc28_)
                                                                                                                                    {
                                                                                                                                       addr663:
                                                                                                                                       §§push(true);
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!_loc29_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(_loc28_ || b2Distance)
                                                                                                                                             {
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr720);
                                                                                                                                                }
                                                                                                                                                _loc22_ = §§pop();
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   addr752:
                                                                                                                                                   if(_loc22_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr761:
                                                                                                                                                         break loop2;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push((_loc26_ = _loc8_).§`!@§);
                                                                                                                                                      if(_loc28_ || param3)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                      }
                                                                                                                                                      _loc27_ = §§pop();
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         _loc26_.§`!@§ = _loc27_;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop0;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr752);
                                                                                                                                          }
                                                                                                                                          §§goto(addr708);
                                                                                                                                       }
                                                                                                                                       §§goto(addr752);
                                                                                                                                    }
                                                                                                                                    §§goto(addr761);
                                                                                                                                 }
                                                                                                                                 §§push(_loc17_);
                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc29_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                          {
                                                                                                                                             addr613:
                                                                                                                                             if(!(_loc29_ && param3))
                                                                                                                                             {
                                                                                                                                                _loc17_ = §§pop();
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   if(false)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr625);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr747);
                                                                                                                                                }
                                                                                                                                                §§goto(addr761);
                                                                                                                                             }
                                                                                                                                             §§goto(addr625);
                                                                                                                                          }
                                                                                                                                          §§goto(addr747);
                                                                                                                                       }
                                                                                                                                       §§goto(addr613);
                                                                                                                                    }
                                                                                                                                    §§goto(addr734);
                                                                                                                                 }
                                                                                                                                 §§goto(addr613);
                                                                                                                                 addr659:
                                                                                                                              }
                                                                                                                              §§goto(addr752);
                                                                                                                           }
                                                                                                                           §§goto(addr660);
                                                                                                                        }
                                                                                                                        §§goto(addr733);
                                                                                                                        addr730:
                                                                                                                     }
                                                                                                                     §§goto(addr735);
                                                                                                                  }
                                                                                                                  §§goto(addr761);
                                                                                                               }
                                                                                                               §§goto(addr659);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr738);
                                                                                                      }
                                                                                                      §§goto(addr708);
                                                                                                   }
                                                                                                   §§goto(addr734);
                                                                                                }
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§goto(addr752);
                                                                                                }
                                                                                                §§goto(addr761);
                                                                                                addr746:
                                                                                             }
                                                                                             §§goto(addr752);
                                                                                             addr583:
                                                                                          }
                                                                                          §§goto(addr730);
                                                                                       }
                                                                                       §§goto(addr746);
                                                                                    }
                                                                                    §§goto(addr734);
                                                                                 }
                                                                                 §§goto(addr482);
                                                                              }
                                                                              §§goto(addr699);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                        addr527:
                                                                        §§goto(addr527);
                                                                     }
                                                                     §§goto(addr752);
                                                                  }
                                                                  §§goto(addr663);
                                                               }
                                                               §§goto(addr583);
                                                            }
                                                         }
                                                         break loop2;
                                                      }
                                                      §§goto(addr431);
                                                   }
                                                   _loc15_ = §§pop();
                                                }
                                                §§goto(addr441);
                                             }
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr431);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr314);
                     }
                     §§goto(addr391);
                  }
                  §§goto(addr977);
               }
               b2_gjkMaxIters = b2Math.§-!V§(b2_gjkMaxIters,_loc19_);
               if(!(_loc29_ && param2))
               {
                  _loc8_.§^!§(param1.§in §,param1.§]$§);
                  §§goto(addr997);
               }
               §§goto(addr963);
            }
         }
      }
   }
}
