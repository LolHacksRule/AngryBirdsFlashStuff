package §_-gE§
{
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §_-mm§:b2Vec2;
      
      public var §_-Eg§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-mm§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr49:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
            addr57:
         }
         while(true)
         {
            this.§_-Eg§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc3_)
            {
               continue;
            }
            if(!(_loc3_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               if(_loc2_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§_-Eg§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §_-bL§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
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
         if(_loc28_ || param2)
         {
            if(param1.§_-XO§ == 0)
            {
               if(!_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§_-1c§);
         if(!(_loc29_ && param3))
         {
            var _loc27_:* = §§pop();
            if(!_loc29_)
            {
               §§push(b2Manifold.§_-fd§);
               if(!_loc29_)
               {
                  §§push(_loc27_);
                  if(!(_loc29_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc29_)
                        {
                           addr1956:
                           §§push(0);
                           if(!_loc28_)
                           {
                              addr1998:
                           }
                        }
                        else
                        {
                           addr1995:
                           §§push(2);
                           if(_loc28_)
                           {
                              §§goto(addr1998);
                           }
                        }
                        addr2004:
                        loop114:
                        switch(§§pop())
                        {
                           case 0:
                              _loc8_ = param2.R;
                              _loc7_ = param1.m_localPoint;
                              if(_loc28_ || param2)
                              {
                                 §§push(param2.position);
                                 if(!(_loc29_ && param2))
                                 {
                                    §§push(§§pop().x);
                                    if(_loc28_ || param2)
                                    {
                                       §§push(_loc8_.col1);
                                       if(!(_loc29_ && param1))
                                       {
                                          §§push(§§pop().x);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc28_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc29_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc29_ && this))
                                                   {
                                                      §§push(_loc8_.col2);
                                                      if(!_loc29_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc29_ && param1))
                                                         {
                                                            addr157:
                                                            §§push(_loc7_.y);
                                                            if(!(_loc29_ && param1))
                                                            {
                                                               addr166:
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc29_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc28_)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           addr190:
                                                                           §§push(param2.position.y);
                                                                           if(_loc28_)
                                                                           {
                                                                              addr195:
                                                                              §§push(_loc8_.col1.y);
                                                                              if(!(_loc29_ && this))
                                                                              {
                                                                                 addr203:
                                                                                 §§push(_loc7_.x);
                                                                                 if(!(_loc29_ && param1))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr215:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr218:
                                                                                          §§push(_loc8_.col2.y);
                                                                                          if(_loc28_ || param3)
                                                                                          {
                                                                                             addr228:
                                                                                             §§push(§§pop() * _loc7_.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc29_ && param3))
                                                                                          {
                                                                                             addr239:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        addr241:
                                                                        _loc8_ = param4.R;
                                                                        _loc7_ = param1.§_-Eg§[0].m_localPoint;
                                                                        if(_loc28_ || this)
                                                                        {
                                                                           §§push(param4.position);
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr820:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc8_.col1);
                                                                                 addr822:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr823:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       addr825:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr826:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr827:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.col2);
                                                                                                addr829:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr830:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_.y);
                                                                                                      addr832:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr833:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr834:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr835:
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
                                                                        §§goto(addr282);
                                                                     }
                                                                     _loc16_ = §§pop();
                                                                     §§goto(addr241);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr241);
                           case 1:
                              _loc8_ = param2.R;
                              _loc7_ = param1.§catch§;
                              if(!_loc29_)
                              {
                                 §§push(_loc8_.col1);
                                 if(_loc28_ || param3)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc28_)
                                    {
                                       §§push(_loc7_.x);
                                       if(!(_loc29_ && param3))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc28_)
                                          {
                                             §§push(_loc8_.col2);
                                             if(_loc28_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc29_)
                                                {
                                                   addr880:
                                                   §§push(_loc7_.y);
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc28_ || param3)
                                                      {
                                                         addr897:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc28_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc28_ || param2)
                                                            {
                                                               addr908:
                                                               _loc9_ = §§pop();
                                                               if(!(_loc29_ && param3))
                                                               {
                                                                  addr918:
                                                                  §§push(_loc8_.col1.y);
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     addr926:
                                                                     §§push(_loc7_.x);
                                                                     if(!(_loc29_ && param3))
                                                                     {
                                                                        addr935:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc28_)
                                                                        {
                                                                           addr940:
                                                                           §§push(_loc8_.col2.y);
                                                                           if(_loc28_)
                                                                           {
                                                                              addr943:
                                                                              §§push(§§pop() * _loc7_.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr950:
                                                                              _loc10_ = Number(§§pop());
                                                                              _loc8_ = param2.R;
                                                                              _loc7_ = param1.m_localPoint;
                                                                              if(_loc28_ || this)
                                                                              {
                                                                                 §§push(param2.position);
                                                                                 loop82:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc29_ && param3))
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr1153:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr1154:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr1156:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(_loc7_.y);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            addr1161:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr1152:
                                                                                          }
                                                                                          addr1162:
                                                                                          addr1055:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr1163:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1164:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_ = §§pop();
                                                                                                   continue loop82;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(_loc8_.col1);
                                                                                          if(_loc29_ && param3)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(!(_loc29_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr1089:
                                                                                                         §§push(_loc8_.col2);
                                                                                                         if(!(_loc29_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               addr1101:
                                                                                                               §§push(_loc7_.y);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     addr1108:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc29_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc28_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              addr1126:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc29_ && param2))
                                                                                                                              {
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 loop90:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-mm§);
                                                                                                                                    loop91:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       addr1026:
                                                                                                                                       addr1397:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          if(!(_loc28_ || this))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          continue loop91;
                                                                                                                                       }
                                                                                                                                       break loop114;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc28_ || param2))
                                                                                                                                       {
                                                                                                                                          continue loop90;
                                                                                                                                       }
                                                                                                                                       if(!(_loc28_ || param3))
                                                                                                                                       {
                                                                                                                                          continue loop82;
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr1397);
                                                                                                                                    }
                                                                                                                                    if(§§pop() < param1.§_-XO§)
                                                                                                                                    {
                                                                                                                                       §§push(param4.R);
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          _loc7_ = param1.§_-Eg§[_loc6_].m_localPoint;
                                                                                                                                          if(!_loc29_)
                                                                                                                                          {
                                                                                                                                             addr1390:
                                                                                                                                             §§push(param4.position.x);
                                                                                                                                             if(!(_loc29_ && param2))
                                                                                                                                             {
                                                                                                                                                addr1381:
                                                                                                                                                §§push(§§pop() + _loc8_.col1.x * _loc7_.x);
                                                                                                                                             }
                                                                                                                                             _loc13_ = Number(§§pop() + _loc8_.col2.x * _loc7_.y);
                                                                                                                                          }
                                                                                                                                          addr1392:
                                                                                                                                          §§push(param4.position);
                                                                                                                                          if(!_loc29_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_.col1);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc28_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc29_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                         if(!(_loc29_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc29_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  addr1306:
                                                                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(_loc28_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_.col2);
                                                                                                                                                                           if(!(_loc29_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1341:
                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1344:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                          if(!(_loc29_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1352:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc14_ = §§pop();
                                                                                                                                                                                                addr1358:
                                                                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§_-Eg§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                                   addr1197:
                                                                                                                                                                                                   this.§_-Eg§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                                   addr1259:
                                                                                                                                                                                                   if(!(_loc29_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc6_++;
                                                                                                                                                                                                      if(!(_loc29_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(false)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1197);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1393);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1259);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1197);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1358);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1392);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1390);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1381);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1390);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1344);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1390);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1352);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1381);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1344);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1390);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1341);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1390);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1306);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1381);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1352);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1390);
                                                                                                                                       }
                                                                                                                                       addr1401:
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       _loc7_ = param1.§catch§;
                                                                                                                                       if(!_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_.col1);
                                                                                                                                          if(!(_loc29_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_.x);
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc29_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.col2);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!_loc29_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                            if(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  addr1447:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        if(_loc28_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1463:
                                                                                                                                                                           §§push(_loc8_.col1.y);
                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1466:
                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                              if(!(_loc29_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1475:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1483:
                                                                                                                                                                                    addr1485:
                                                                                                                                                                                    §§push(_loc8_.col2.y);
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1488:
                                                                                                                                                                                       §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1500:
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    _loc8_ = param4.R;
                                                                                                                                                                                    _loc7_ = param1.m_localPoint;
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param4.position);
                                                                                                                                                                                       loop98:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_.col1);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(!_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                   if(!(_loc29_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr1660:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_.col2);
                                                                                                                                                                                                            addr1662:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.y);
                                                                                                                                                                                                                     addr1667:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1665:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1668:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  addr1669:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     addr1670:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc11_ = §§pop();
                                                                                                                                                                                                                        continue loop98;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1605:
                                                                                                                                                                                                         if(!(_loc28_ || param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc7_.y);
                                                                                                                                                                                                         if(_loc28_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1622:
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1670);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1635:
                                                                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                                                                               loop109:
                                                                                                                                                                                                               while(!_loc29_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§_-mm§);
                                                                                                                                                                                                                  loop110:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                                                                     loop111:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                        loop112:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§_-mm§);
                                                                                                                                                                                                                                 if(!_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc10_);
                                                                                                                                                                                                                                    if(_loc28_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop112;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop111;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(-§§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1923:
                                                                                                                                                                                                                                          if(§§pop() < param1.§_-XO§)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc8_ = param2.R;
                                                                                                                                                                                                                                             _loc7_ = param1.§_-Eg§[_loc6_].m_localPoint;
                                                                                                                                                                                                                                             if(_loc28_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1920:
                                                                                                                                                                                                                                                addr1899:
                                                                                                                                                                                                                                                addr1901:
                                                                                                                                                                                                                                                addr1902:
                                                                                                                                                                                                                                                addr1898:
                                                                                                                                                                                                                                                addr1896:
                                                                                                                                                                                                                                                addr1895:
                                                                                                                                                                                                                                                §§push(param2.position.x + _loc8_.col1.x * _loc7_.x);
                                                                                                                                                                                                                                                if(!_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1910:
                                                                                                                                                                                                                                                   §§push(§§pop() + _loc8_.col2.x * _loc7_.y);
                                                                                                                                                                                                                                                   if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                                                                addr1921:
                                                                                                                                                                                                                                                §§push(param2.position);
                                                                                                                                                                                                                                                if(!_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc28_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc8_.col1);
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                            if(!_loc29_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc7_.x);
                                                                                                                                                                                                                                                               if(!(_loc29_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1810:
                                                                                                                                                                                                                                                                     if(_loc28_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_ || param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(_loc28_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc8_.col2);
                                                                                                                                                                                                                                                                              if(_loc28_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                                                                 if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1849:
                                                                                                                                                                                                                                                                                    if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1858:
                                                                                                                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                                                                                                                       if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc29_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr1873:
                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                if(_loc28_ || param2)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1888:
                                                                                                                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr1891:
                                                                                                                                                                                                                                                                                                      _loc14_ = Number(§§pop());
                                                                                                                                                                                                                                                                                                      this.§_-Eg§[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                                                                                                                                                                                                                                                                                                      addr1761:
                                                                                                                                                                                                                                                                                                      if(!(_loc29_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1704:
                                                                                                                                                                                                                                                                                                            this.§_-Eg§[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                                                                                                                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               _loc6_++;
                                                                                                                                                                                                                                                                                                               if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr1704);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr1922:
                                                                                                                                                                                                                                                                                                                  §§goto(addr1923);
                                                                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1704);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1761);
                                                                                                                                                                                                                                                                                                            addr1770:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1921);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr1892:
                                                                                                                                                                                                                                                                                                      §§goto(addr1892);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1920);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1891);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1899);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1901);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1910);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1902);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1873);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1910);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1888);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1910);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1849);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1858);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1810);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1898);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1896);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1891);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1895);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1770);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop109;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop110;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1926:
                                                                                                                                                                                                                           break loop114;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop98;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1668);
                                                                                                                                                                                                            §§goto(addr1670);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1667);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1667);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1665);
                                                                                                                                                                                                addr1562:
                                                                                                                                                                                                §§push(_loc8_.col1);
                                                                                                                                                                                                if(!(_loc28_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(!(_loc29_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1589:
                                                                                                                                                                                                            if(_loc28_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc29_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_.col2);
                                                                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1605);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1622);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1662);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1660);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1669);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1635);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1622);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1614);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1622);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1670);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1926);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1500);
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1488);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1483);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1466);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1483);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1475);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1488);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1447);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1485);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1483);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1488);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1466);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1463);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1397);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1163);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1164);
                                                                                                                        }
                                                                                                                        §§goto(addr1126);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1162);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1152);
                                                                                                                  }
                                                                                                                  §§goto(addr1162);
                                                                                                               }
                                                                                                               §§goto(addr1161);
                                                                                                            }
                                                                                                            §§goto(addr1108);
                                                                                                         }
                                                                                                         §§goto(addr1156);
                                                                                                      }
                                                                                                      §§goto(addr1126);
                                                                                                   }
                                                                                                   §§goto(addr1153);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1101);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1154);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1397);
                                                                              addr949:
                                                                           }
                                                                           §§goto(addr950);
                                                                        }
                                                                        §§goto(addr949);
                                                                     }
                                                                     §§goto(addr943);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr950);
                                                         }
                                                         §§goto(addr908);
                                                      }
                                                      §§goto(addr935);
                                                   }
                                                   §§goto(addr943);
                                                }
                                                §§goto(addr897);
                                             }
                                             §§goto(addr940);
                                          }
                                          §§goto(addr926);
                                       }
                                       §§goto(addr880);
                                    }
                                    §§goto(addr950);
                                 }
                              }
                              §§goto(addr918);
                           case 2:
                              §§goto(addr1401);
                        }
                        param4.R;
                        return;
                        addr2003:
                     }
                     else
                     {
                        §§push(b2Manifold.§_-f8§);
                        if(_loc28_)
                        {
                           §§push(_loc27_);
                           if(_loc28_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc29_)
                                 {
                                    §§push(1);
                                    if(_loc28_)
                                    {
                                       addr1988:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1995);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§_-vN§);
                                 if(!_loc29_)
                                 {
                                    addr1994:
                                    if(§§pop() === _loc27_)
                                    {
                                       §§goto(addr1995);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr2003);
                           }
                        }
                        §§goto(addr1994);
                     }
                     §§goto(addr1995);
                  }
                  §§goto(addr1994);
               }
               §§goto(addr1988);
            }
            §§goto(addr1956);
         }
         §§goto(addr2004);
      }
   }
}
