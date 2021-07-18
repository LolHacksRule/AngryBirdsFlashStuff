package § G§
{
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §@!Q§:b2Vec2;
      
      public var §+!S§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!Q§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc2_)
               {
                  break;
               }
               loop5:
               while(!(_loc3_ || _loc3_))
               {
                  while(true)
                  {
                     _loc1_++;
                     continue loop5;
                  }
               }
               continue;
            }
            this.§+!S§[_loc1_] = new b2Vec2();
            §§goto(addr105);
         }
      }
      
      public function §1D§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(_loc29_)
         {
            if(param1.§in § == 0)
            {
               if(!_loc28_)
               {
                  §§goto(addr69);
               }
            }
            §§push(param1.§3c§);
            if(!_loc28_)
            {
               var _loc27_:* = §§pop();
               if(!_loc28_)
               {
                  §§push(b2Manifold.§<'§);
                  if(_loc29_ || this)
                  {
                     §§push(_loc27_);
                     if(_loc29_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc29_ || param3)
                           {
                              §§push(0);
                              if(_loc28_)
                              {
                                 addr1999:
                              }
                           }
                           else
                           {
                              addr2006:
                              §§push(2);
                              if(!_loc28_)
                              {
                                 addr2019:
                              }
                           }
                           addr2024:
                           loop121:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.m_localPoint;
                                 if(_loc29_ || this)
                                 {
                                    §§push(param2.position);
                                    if(_loc29_ || param2)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc29_ || param3)
                                       {
                                          §§push(_loc8_.col1);
                                          if(_loc29_)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc28_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc29_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc29_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc28_)
                                                      {
                                                         §§push(_loc8_.col2);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc29_)
                                                            {
                                                               §§push(_loc7_.y);
                                                               if(!_loc28_)
                                                               {
                                                                  addr137:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr140:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc28_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc28_)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(_loc29_)
                                                                           {
                                                                              addr156:
                                                                              §§push(param2.position.y);
                                                                              if(_loc29_ || param1)
                                                                              {
                                                                                 addr166:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(_loc29_ || this)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc29_ || param1)
                                                                                       {
                                                                                          addr186:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc29_ || this)
                                                                                          {
                                                                                             addr194:
                                                                                             §§push(_loc8_.col2.y);
                                                                                             if(!(_loc28_ && param3))
                                                                                             {
                                                                                                addr207:
                                                                                                §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                if(_loc29_ || param2)
                                                                                                {
                                                                                                   addr215:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr207);
                                                                                          }
                                                                                          §§goto(addr215);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              _loc16_ = §§pop();
                                                                              addr217:
                                                                              _loc8_ = param4.R;
                                                                              _loc7_ = param1.§+!S§[0].m_localPoint;
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(param4.position);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr781:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       addr783:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr784:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             addr786:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr787:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr788:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr790:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr791:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.y);
                                                                                                            addr793:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr794:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr795:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr796:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc17_ = §§pop();
                                                                                                                        continue loop0;
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
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        §§goto(addr194);
                                                                     }
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   §§goto(addr207);
                                                }
                                                §§goto(addr137);
                                             }
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 §§goto(addr156);
                              case 1:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.§39§;
                                 if(!(_loc28_ && this))
                                 {
                                    §§push(_loc8_.col1);
                                    if(!(_loc28_ && this))
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc28_)
                                       {
                                          §§push(_loc7_.x);
                                          if(!_loc28_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc29_ || param2)
                                             {
                                                §§push(_loc8_.col2);
                                                if(_loc29_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc29_ || this)
                                                   {
                                                      addr856:
                                                      §§push(_loc7_.y);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc29_ || param1)
                                                         {
                                                            addr868:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc28_ && this))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  addr884:
                                                                  _loc9_ = §§pop();
                                                                  if(_loc29_)
                                                                  {
                                                                     addr889:
                                                                     addr887:
                                                                     §§push(_loc8_.col1.y);
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc7_.x);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc28_ && param1))
                                                                           {
                                                                              addr906:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 addr914:
                                                                                 §§push(§§pop() * _loc7_.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr920:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr914);
                                                                     }
                                                                     _loc10_ = §§pop();
                                                                  }
                                                                  _loc8_ = param2.R;
                                                                  _loc7_ = param1.m_localPoint;
                                                                  if(_loc29_ || param1)
                                                                  {
                                                                     §§push(param2.position);
                                                                     loop85:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(_loc8_.col1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr1121:
                                                                              addr1023:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_.x);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr1127:
                                                                                       addr1078:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col2);
                                                                                          addr1129:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr1130:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.y);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(_loc28_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(§§pop() * _loc7_.y);
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc28_ && param1))
                                                                                          {
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1127);
                                                                                             }
                                                                                          }
                                                                                          addr1111:
                                                                                          _loc12_ = §§pop();
                                                                                          loop97:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§@!Q§);
                                                                                             loop98:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                addr989:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr990:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop98;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc29_ || this)
                                                                                                {
                                                                                                   §§push(0);
                                                                                                   if(_loc29_ || param2)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc29_ || param3)
                                                                                                         {
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               continue loop85;
                                                                                                            }
                                                                                                            if(true)
                                                                                                            {
                                                                                                               addr1369:
                                                                                                               §§push(_loc6_);
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr963);
                                                                                                         }
                                                                                                         §§goto(addr990);
                                                                                                      }
                                                                                                      addr1373:
                                                                                                      break loop121;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop97;
                                                                                             }
                                                                                             if(§§pop() < param1.§in §)
                                                                                             {
                                                                                                §§push(param4.R);
                                                                                                if(_loc29_ || this)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   _loc7_ = param1.§+!S§[_loc6_].m_localPoint;
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      addr1336:
                                                                                                      §§push(param4.position.x);
                                                                                                      §§push(_loc8_.col1.x);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         addr1358:
                                                                                                         addr1367:
                                                                                                         addr1357:
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(_loc29_ || param2)
                                                                                                         {
                                                                                                            addr1352:
                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                            §§push(_loc8_.col2.x);
                                                                                                            §§push(_loc7_.y);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop() * §§pop());
                                                                                                         if(_loc29_ || param2)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         _loc13_ = §§pop();
                                                                                                         addr1368:
                                                                                                         §§push(param4.position);
                                                                                                         if(_loc29_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               if(_loc29_ || param1)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc29_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc28_ && this))
                                                                                                                           {
                                                                                                                              if(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc29_)
                                                                                                                                 {
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_.col2);
                                                                                                                                       if(_loc29_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             addr1311:
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                addr1316:
                                                                                                                                                §§push(§§pop() * _loc7_.y);
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr1331:
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            this.§+!S§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                            addr1332:
                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr1183:
                                                                                                                                                               this.§+!S§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                               if(_loc29_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_++;
                                                                                                                                                                  if(_loc29_ || param3)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc29_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1183);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1369);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1332);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1183);
                                                                                                                                                                  addr1217:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1332);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1368);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1336);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1352);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1331);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1352);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1358);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1316);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1352);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1367);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1331);
                                                                                                                              }
                                                                                                                              §§goto(addr1352);
                                                                                                                           }
                                                                                                                           §§goto(addr1311);
                                                                                                                        }
                                                                                                                        §§goto(addr1357);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1316);
                                                                                                               }
                                                                                                               §§goto(addr1336);
                                                                                                            }
                                                                                                            §§goto(addr1331);
                                                                                                         }
                                                                                                         §§goto(addr1336);
                                                                                                      }
                                                                                                      §§goto(addr1352);
                                                                                                   }
                                                                                                   §§goto(addr1217);
                                                                                                }
                                                                                                addr1377:
                                                                                                _loc8_ = §§pop();
                                                                                                _loc7_ = param1.§39§;
                                                                                                if(_loc29_ || this)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   if(_loc29_)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!(_loc28_ && param3))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc29_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.y);
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           addr1433:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc28_ && this))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc28_ && this))
                                                                                                                              {
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 if(_loc29_ || param3)
                                                                                                                                 {
                                                                                                                                    addr1459:
                                                                                                                                    §§push(_loc8_.col1.y);
                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                    {
                                                                                                                                       addr1467:
                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             addr1476:
                                                                                                                                             §§push(_loc8_.col2.y);
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                addr1482:
                                                                                                                                                addr1481:
                                                                                                                                                addr1479:
                                                                                                                                                §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr1486:
                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                _loc8_ = param4.R;
                                                                                                                                                _loc7_ = param1.m_localPoint;
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§push(param4.position);
                                                                                                                                                   loop103:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      loop104:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_.col1);
                                                                                                                                                         addr1706:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            addr1707:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.x);
                                                                                                                                                               loop107:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  addr1710:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col2);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1716:
                                                                                                                                                                           addr1634:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                              addr1718:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr1719:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    addr1720:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc8_.col2);
                                                                                                                                                                           if(_loc28_ && param2)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc29_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1655:
                                                                                                                                                                                 §§push(_loc7_.y);
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc29_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop107;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1665:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc29_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1680:
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop104;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1690:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                                                                if(_loc29_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§@!Q§);
                                                                                                                                                                                                   loop116:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      addr1562:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                                                                         addr1563:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            addr1564:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop116;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1937:
                                                                                                                                                                                                break loop121;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1720);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                             continue loop103;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1721:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1690);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1716);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1718);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1719);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1665);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1721);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1937);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1482);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1486);
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1482);
                                                                                                                           }
                                                                                                                           §§goto(addr1467);
                                                                                                                        }
                                                                                                                        §§goto(addr1482);
                                                                                                                     }
                                                                                                                     §§goto(addr1481);
                                                                                                                  }
                                                                                                                  §§goto(addr1479);
                                                                                                               }
                                                                                                               §§goto(addr1476);
                                                                                                            }
                                                                                                            §§goto(addr1467);
                                                                                                         }
                                                                                                         §§goto(addr1433);
                                                                                                      }
                                                                                                      §§goto(addr1482);
                                                                                                   }
                                                                                                   §§goto(addr1459);
                                                                                                }
                                                                                                §§goto(addr1482);
                                                                                             }
                                                                                             §§goto(addr1373);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1130);
                                                                                    }
                                                                                 }
                                                                                 addr1132:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    addr1133:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       addr1134:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(_loc8_.col1);
                                                                              if(_loc28_ && param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().y);
                                                                              if(_loc29_)
                                                                              {
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                    if(!(_loc28_ && param3))
                                                                                    {
                                                                                       if(!(_loc28_ && param3))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc29_ || this)
                                                                                          {
                                                                                             if(!(_loc28_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   §§push(_loc8_.col2);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§goto(addr1078);
                                                                                                      }
                                                                                                      §§goto(addr1088);
                                                                                                   }
                                                                                                   §§goto(addr1129);
                                                                                                }
                                                                                                §§goto(addr1111);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr1121);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1078);
                                                                                       }
                                                                                       §§goto(addr1132);
                                                                                    }
                                                                                    §§goto(addr1088);
                                                                                 }
                                                                                 §§goto(addr1133);
                                                                              }
                                                                              §§goto(addr1078);
                                                                           }
                                                                        }
                                                                        addr1135:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           continue loop85;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1373);
                                                               }
                                                               §§goto(addr920);
                                                            }
                                                            §§goto(addr884);
                                                         }
                                                      }
                                                      §§goto(addr914);
                                                   }
                                                   §§goto(addr868);
                                                }
                                                §§goto(addr906);
                                             }
                                             §§goto(addr884);
                                          }
                                          §§goto(addr856);
                                       }
                                       §§goto(addr884);
                                    }
                                    §§goto(addr889);
                                 }
                                 §§goto(addr887);
                              case 2:
                                 §§goto(addr1377);
                           }
                           param4.R;
                           return;
                           addr2024:
                        }
                        else
                        {
                           §§push(b2Manifold.§-b§);
                           if(_loc29_)
                           {
                              §§push(_loc27_);
                              if(!(_loc28_ && param1))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc28_ && param2))
                                    {
                                       §§push(1);
                                       if(_loc29_ || param3)
                                       {
                                          §§goto(addr1999);
                                       }
                                       else
                                       {
                                          §§goto(addr2019);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr2006);
                                    }
                                    §§goto(addr2024);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§3D§);
                                    if(!_loc28_)
                                    {
                                       addr2005:
                                       if(§§pop() === _loc27_)
                                       {
                                          §§goto(addr2006);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       §§goto(addr2024);
                                    }
                                 }
                              }
                              §§goto(addr2005);
                           }
                        }
                        §§goto(addr2019);
                     }
                     §§goto(addr2005);
                  }
                  §§goto(addr1999);
               }
               §§goto(addr2006);
            }
            §§goto(addr2024);
         }
         addr69:
      }
   }
}
