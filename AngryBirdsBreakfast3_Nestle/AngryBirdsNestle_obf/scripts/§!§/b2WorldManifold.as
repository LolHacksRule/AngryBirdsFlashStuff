package §!§
{
   import §'!_§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §!!f§:b2Vec2;
      
      public var §`9§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!f§ = new b2Vec2();
         }
         while(true)
         {
            while(true)
            {
               super();
               do
               {
                  this.§`9§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
               }
               while(!_loc3_);
               
               if(!(_loc2_ && _loc3_))
               {
                  if(true)
                  {
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_ || this)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§`9§[_loc1_] = new b2Vec2();
                        }
                        _loc1_++;
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §6R§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         if(_loc29_)
         {
            if(param1.§4!5§ == 0)
            {
               if(!(_loc28_ && param3))
               {
                  §§goto(addr74);
               }
            }
            §§push(param1.§5Q§);
            if(_loc29_)
            {
               var _loc27_:* = §§pop();
               if(_loc29_ || param1)
               {
                  §§push(b2Manifold.§9!+§);
                  if(_loc29_ || param1)
                  {
                     §§push(_loc27_);
                     if(_loc29_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc29_ || param3)
                           {
                              §§push(0);
                              if(!(_loc29_ || this))
                              {
                                 addr2019:
                              }
                              addr2049:
                              loop155:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.m_localPoint;
                                    if(_loc29_ || param1)
                                    {
                                       §§push(param2.position);
                                       if(!_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc29_)
                                          {
                                             §§push(_loc8_.col1);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc28_ && param1))
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc29_ || param2)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc29_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc29_)
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(_loc29_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc29_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc29_)
                                                                  {
                                                                     addr137:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc28_ && param1))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           addr153:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc29_ || this)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr166:
                                                                                 §§push(param2.position.y);
                                                                                 if(_loc29_ || this)
                                                                                 {
                                                                                    addr176:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       addr179:
                                                                                       §§push(_loc7_.x);
                                                                                       if(_loc29_ || param3)
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc29_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr201:
                                                                                                §§push(_loc8_.col2.y);
                                                                                                if(_loc29_)
                                                                                                {
                                                                                                   addr207:
                                                                                                   §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      addr215:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr207);
                                                                                             }
                                                                                             _loc16_ = §§pop();
                                                                                             addr217:
                                                                                             _loc8_ = param4.R;
                                                                                             _loc7_ = param1.§`9§[0].m_localPoint;
                                                                                             if(_loc29_ || this)
                                                                                             {
                                                                                                §§push(param4.position);
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr806:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      addr808:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr809:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.x);
                                                                                                            addr811:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr812:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr813:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     addr815:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr816:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           addr818:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr819:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr820:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr821:
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
                                                                                             §§goto(addr423);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                              }
                                                                              §§goto(addr217);
                                                                           }
                                                                        }
                                                                        §§goto(addr215);
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr207);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr217);
                                 case 1:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.§4!D§;
                                    if(_loc29_ || param2)
                                    {
                                       §§push(_loc8_.col1);
                                       if(!_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc29_)
                                          {
                                             §§push(_loc7_.x);
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc8_.col2);
                                                   if(_loc29_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc29_)
                                                      {
                                                         addr866:
                                                         §§push(_loc7_.y);
                                                         if(!_loc28_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc28_)
                                                            {
                                                               addr873:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc29_)
                                                               {
                                                                  addr876:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc29_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc29_)
                                                                     {
                                                                        addr884:
                                                                        §§push(_loc8_.col1.y);
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(_loc7_.x);
                                                                           if(_loc29_ || param2)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc29_ || this)
                                                                              {
                                                                                 addr904:
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr912:
                                                                                    addr911:
                                                                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                    }
                                                                                    addr916:
                                                                                    _loc10_ = §§pop();
                                                                                    _loc8_ = param2.R;
                                                                                    _loc7_ = param1.m_localPoint;
                                                                                    if(!_loc28_)
                                                                                    {
                                                                                       §§push(param2.position);
                                                                                       loop83:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop84:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             addr1111:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop86:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_.x);
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col2);
                                                                                                            addr1127:
                                                                                                            addr1062:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc29_ || this)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.y);
                                                                                                                     addr1137:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1135:
                                                                                                               }
                                                                                                               addr1138:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr1139:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr1140:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        continue loop83;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!(_loc29_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!(_loc29_ || this))
                                                                                                            {
                                                                                                               continue loop84;
                                                                                                            }
                                                                                                            §§push(_loc8_.col2);
                                                                                                            if(!(_loc28_ && param3))
                                                                                                            {
                                                                                                               addr1096:
                                                                                                               §§push(§§pop().y);
                                                                                                               if(_loc29_ || param2)
                                                                                                               {
                                                                                                                  addr1095:
                                                                                                                  §§push(§§pop() * _loc7_.y);
                                                                                                               }
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  addr1102:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     addr1101:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  _loc12_ = §§pop();
                                                                                                                  loop93:
                                                                                                                  while(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(this.§!!f§);
                                                                                                                     loop94:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop95:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           loop96:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop97:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§!!f§);
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 if(!(_loc28_ && param2))
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop98:
                                                                                                                                    for(; !(_loc28_ && this); if(!(_loc29_ || this))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    },if(_loc28_)
                                                                                                                                    {
                                                                                                                                       continue loop93;
                                                                                                                                    },if(false)
                                                                                                                                    {
                                                                                                                                       continue loop97;
                                                                                                                                    },§§goto(addr1374))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(_loc28_ && param1)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          if(_loc28_ && param2)
                                                                                                                                          {
                                                                                                                                             break loop155;
                                                                                                                                          }
                                                                                                                                          addr1378:
                                                                                                                                          continue loop98;
                                                                                                                                       }
                                                                                                                                       loop119:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= param1.§4!5§)
                                                                                                                                          {
                                                                                                                                             §§goto(addr1378);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(param4.R);
                                                                                                                                             if(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                _loc7_ = param1.§`9§[_loc6_].m_localPoint;
                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(param4.position);
                                                                                                                                                   loop103:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!(_loc28_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_.col1);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            loop105:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.x);
                                                                                                                                                               loop106:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col2);
                                                                                                                                                                        addr1366:
                                                                                                                                                                        addr1304:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1367:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                              addr1369:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc29_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc8_.col2);
                                                                                                                                                                        if(_loc29_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1323:
                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop106;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1336:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1335:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc14_ = §§pop();
                                                                                                                                                                                 while(_loc29_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§`9§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                    loop116:
                                                                                                                                                                                    for(; _loc29_ || param2; while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc6_++;
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc29_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop116;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1183);
                                                                                                                                                                                    },while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop119;
                                                                                                                                                                                    },break loop155)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§`9§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                          continue loop116;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop103;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop105;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr1366);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1367);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1370:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr1371:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr1263:
                                                                                                                                                            §§push(_loc8_.col1);
                                                                                                                                                            if(!(_loc29_ || param3))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc29_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_.x);
                                                                                                                                                                  if(_loc29_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc28_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1301:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1304);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1335);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1323);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1369);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1323);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1370);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1301);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1372:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         continue loop103;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1210);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr1382:
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                _loc7_ = param1.§4!D§;
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_.col1);
                                                                                                                                                   if(_loc29_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_.col2);
                                                                                                                                                               if(_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(_loc29_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_.y);
                                                                                                                                                                     if(!(_loc28_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1433:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                                                                 if(!(_loc28_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1449:
                                                                                                                                                                                    §§push(_loc8_.col1.y);
                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1452:
                                                                                                                                                                                       §§push(_loc7_.x);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1456:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1459:
                                                                                                                                                                                             §§push(_loc8_.col2.y);
                                                                                                                                                                                             if(_loc29_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1469:
                                                                                                                                                                                                §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc29_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                          addr1482:
                                                                                                                                                                                          _loc8_ = param4.R;
                                                                                                                                                                                          _loc7_ = param1.m_localPoint;
                                                                                                                                                                                          if(!(_loc28_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param4.position);
                                                                                                                                                                                             loop120:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_.col1);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      if(!(_loc28_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            addr1682:
                                                                                                                                                                                                            addr1631:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr1683:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_.col2);
                                                                                                                                                                                                                  addr1685:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1631:
                                                                                                                                                                                                            if(_loc28_ && this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                            if(_loc29_ || param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1647:
                                                                                                                                                                                                               if(_loc29_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1683);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                            if(_loc29_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§!!f§);
                                                                                                                                                                                                               loop132:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                  addr1552:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                     addr1553:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                        addr1554:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop132;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1947);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1686:
                                                                                                                                                                                                      addr1565:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_.y);
                                                                                                                                                                                                         addr1688:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            addr1689:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               addr1690:
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
                                                                                                                                                                                                         if(_loc29_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc29_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_.col2);
                                                                                                                                                                                                                              if(_loc29_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1631);
                                                                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1682);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1639);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1685);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                              continue loop120;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1691:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1647);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1689);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1639);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1688);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1631);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1686);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1639);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1691);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1514);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1469);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1459);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1482);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1452);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1456);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1469);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1433);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1459);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1452);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1433);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1452);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1449);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop96;
                                                                                                                                 }
                                                                                                                                 continue loop95;
                                                                                                                              }
                                                                                                                              continue loop94;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop83;
                                                                                                               }
                                                                                                               continue loop86;
                                                                                                            }
                                                                                                            §§goto(addr1127);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1135);
                                                                                                   }
                                                                                                   §§goto(addr1137);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr977);
                                                                                 }
                                                                                 §§goto(addr912);
                                                                              }
                                                                              §§goto(addr916);
                                                                           }
                                                                        }
                                                                        §§goto(addr912);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr912);
                                                                  }
                                                                  §§goto(addr904);
                                                               }
                                                            }
                                                            §§goto(addr912);
                                                         }
                                                         §§goto(addr911);
                                                      }
                                                      §§goto(addr873);
                                                   }
                                                   §§goto(addr904);
                                                }
                                                §§goto(addr876);
                                             }
                                             §§goto(addr866);
                                          }
                                          §§goto(addr876);
                                       }
                                       §§goto(addr884);
                                    }
                                    §§goto(addr912);
                                 case 2:
                                    §§goto(addr1382);
                              }
                              param4.R;
                              return;
                              addr2049:
                           }
                           else
                           {
                              addr2011:
                              §§push(1);
                              if(!(_loc28_ && param1))
                              {
                                 §§goto(addr2019);
                              }
                              else
                              {
                                 addr2024:
                                 if(§§pop() === _loc27_)
                                 {
                                    addr2026:
                                    §§push(2);
                                    if(!(_loc28_ && param3))
                                    {
                                       addr2044:
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr2049);
                           }
                           §§goto(addr2019);
                        }
                        else
                        {
                           §§push(b2Manifold.§'h§);
                           if(_loc29_ || param3)
                           {
                              §§push(_loc27_);
                              if(_loc29_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc28_ && param1))
                                    {
                                       §§goto(addr2011);
                                    }
                                    §§goto(addr2026);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§!F§);
                                    if(!_loc28_)
                                    {
                                       §§goto(addr2024);
                                    }
                                 }
                                 §§goto(addr2049);
                              }
                           }
                           §§goto(addr2044);
                        }
                     }
                     §§goto(addr2024);
                  }
                  §§goto(addr2044);
               }
               §§goto(addr2011);
            }
            §§goto(addr2049);
         }
         addr74:
      }
   }
}
