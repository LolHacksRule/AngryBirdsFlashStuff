package §55§
{
   import §#]§.*;
   import §4!!§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §9+§:b2Vec2;
      
      public var §1!d§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9+§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr55:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
            addr73:
         }
         while(true)
         {
            this.§1!d§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(!(_loc3_ || _loc1_))
            {
               continue;
            }
            if(!(_loc2_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr73);
            }
            §§goto(addr55);
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
            }
            else
            {
               this.§1!d§[_loc1_] = new b2Vec2();
               while(true)
               {
                  _loc1_++;
               }
               addr100:
            }
            while(_loc2_)
            {
               §§goto(addr100);
            }
         }
      }
      
      public function §`!r§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
            if(param1.§^M§ == 0)
            {
               if(!_loc28_)
               {
                  return;
               }
            }
         }
         §§push(param1.§<";§);
         if(_loc29_)
         {
            var _loc27_:* = §§pop();
            if(!_loc28_)
            {
               §§push(b2Manifold.§9M§);
               if(_loc29_ || param2)
               {
                  §§push(_loc27_);
                  if(_loc29_ || param3)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc28_ && param3))
                        {
                           §§push(0);
                           if(!_loc29_)
                           {
                              addr2000:
                              §§push(_loc27_);
                              if(!_loc28_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc28_ && this))
                                    {
                                       addr2011:
                                       §§push(1);
                                       if(_loc29_ || this)
                                       {
                                          addr2054:
                                          loop142:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc8_ = param2.R;
                                                _loc7_ = param1.m_localPoint;
                                                if(_loc29_)
                                                {
                                                   §§push(param2.position);
                                                   if(_loc29_ || this)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc29_ || this)
                                                      {
                                                         §§push(_loc8_.col1);
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc29_)
                                                            {
                                                               §§push(_loc7_.x);
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc28_ && param1))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(_loc8_.col2);
                                                                        if(_loc29_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc29_ || param2)
                                                                           {
                                                                              §§push(_loc7_.y);
                                                                              if(!(_loc28_ && param3))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc29_ || param1)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!(_loc28_ && param2))
                                                                                       {
                                                                                          addr166:
                                                                                          _loc15_ = §§pop();
                                                                                          if(_loc29_ || param1)
                                                                                          {
                                                                                             addr176:
                                                                                             §§push(param2.position.y);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr181:
                                                                                                §§push(_loc8_.col1.y);
                                                                                                if(_loc29_ || this)
                                                                                                {
                                                                                                   §§push(_loc7_.x);
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      addr198:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         addr201:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc28_ && this))
                                                                                                         {
                                                                                                            addr222:
                                                                                                            addr209:
                                                                                                            addr211:
                                                                                                            §§push(_loc8_.col2.y);
                                                                                                            if(!(_loc28_ && param3))
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc29_ || param2)
                                                                                                            {
                                                                                                               addr230:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc16_ = §§pop();
                                                                                                            _loc8_ = param4.R;
                                                                                                            _loc7_ = param1.§1!d§[0].m_localPoint;
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§push(param4.position);
                                                                                                               loop0:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr786:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col1);
                                                                                                                     addr788:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr789:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.x);
                                                                                                                           addr791:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr792:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr793:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_.col2);
                                                                                                                                    addr795:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr796:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                          addr798:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr799:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr800:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr801:
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
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                         §§goto(addr230);
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                                §§goto(addr222);
                                                                                             }
                                                                                             §§goto(addr209);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    §§goto(addr166);
                                                                                 }
                                                                                 §§goto(addr201);
                                                                              }
                                                                              §§goto(addr198);
                                                                           }
                                                                           §§goto(addr201);
                                                                        }
                                                                        §§goto(addr211);
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  §§goto(addr201);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr181);
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                }
                                                §§goto(addr176);
                                             case 1:
                                                _loc8_ = param2.R;
                                                _loc7_ = param1.§%C§;
                                                if(_loc29_ || param1)
                                                {
                                                   §§push(_loc8_.col1);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc28_ && this))
                                                      {
                                                         §§push(_loc7_.x);
                                                         if(!(_loc28_ && param2))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc29_ || this)
                                                            {
                                                               §§push(_loc8_.col2);
                                                               if(!(_loc28_ && this))
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(_loc29_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc29_ || param2)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc29_)
                                                                           {
                                                                              addr881:
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc28_)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(_loc29_ || this)
                                                                                 {
                                                                                    addr894:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       addr902:
                                                                                       §§push(_loc7_.x);
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             addr921:
                                                                                             §§push(_loc8_.col2.y);
                                                                                             if(_loc29_ || param3)
                                                                                             {
                                                                                                addr932:
                                                                                                addr929:
                                                                                                addr931:
                                                                                                §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                }
                                                                                                addr936:
                                                                                                _loc10_ = §§pop();
                                                                                                _loc8_ = param2.R;
                                                                                                _loc7_ = param1.m_localPoint;
                                                                                                if(!(_loc28_ && param2))
                                                                                                {
                                                                                                   §§push(param2.position);
                                                                                                   loop87:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1133:
                                                                                                      loop88:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         addr1135:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               §§push(_loc7_.x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1141:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr1142:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr1144:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1107:
                                                                                                                  if(_loc28_ && this)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     addr1118:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     if(_loc28_ && param1)
                                                                                                                     {
                                                                                                                        continue loop88;
                                                                                                                     }
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     loop100:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§9+§);
                                                                                                                        loop101:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_);
                                                                                                                           loop102:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().x = §§pop();
                                                                                                                              loop103:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop104:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§9+§);
                                                                                                                                    if(!_loc29_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(_loc10_);
                                                                                                                                    if(!(_loc29_ || param2))
                                                                                                                                    {
                                                                                                                                       continue loop102;
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop105:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!(_loc29_ || param2))
                                                                                                                                             {
                                                                                                                                                addr1378:
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                break loop142;
                                                                                                                                             }
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   while(false)
                                                                                                                                                   {
                                                                                                                                                      continue loop104;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      break loop105;
                                                                                                                                                   }
                                                                                                                                                   break loop142;
                                                                                                                                                   addr1374:
                                                                                                                                                   addr969:
                                                                                                                                                }
                                                                                                                                                continue loop100;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop87;
                                                                                                                                       }
                                                                                                                                       continue loop103;
                                                                                                                                    }
                                                                                                                                    if(§§pop() < param1.§^M§)
                                                                                                                                    {
                                                                                                                                       §§push(param4.R);
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          _loc7_ = param1.§1!d§[_loc6_].m_localPoint;
                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(param4.position);
                                                                                                                                             loop108:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc29_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc8_.col1);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      addr1358:
                                                                                                                                                      addr1263:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                         addr1360:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc8_.col2);
                                                                                                                                                                  addr1366:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1364:
                                                                                                                                                            }
                                                                                                                                                            addr1367:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.y);
                                                                                                                                                               addr1369:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
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
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc8_.col1);
                                                                                                                                                      if(!(_loc29_ || param2))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                         if(_loc29_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr1291:
                                                                                                                                                                     if(_loc29_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_.col2);
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                 if(_loc29_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1323:
                                                                                                                                                                                    §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1335:
                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1372:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                                                                   continue loop108;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1372:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1343:
                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                          loop120:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§1!d§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                             addr1252:
                                                                                                                                                                                             loop121:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1190:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§1!d§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc28_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_++;
                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop121;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop108;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop120;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1358);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1372);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1370);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1323);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1366);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1364);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1335);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1367);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1323);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1360);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1369);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1323);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1291);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1372);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1252);
                                                                                                                                       }
                                                                                                                                       addr1382:
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       _loc7_ = param1.§%C§;
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_.col1);
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(_loc29_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_.x);
                                                                                                                                                if(_loc29_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc29_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.col2);
                                                                                                                                                      if(_loc29_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!(_loc28_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc29_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr1443:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr1464:
                                                                                                                                                                           §§push(_loc8_.col1.y);
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1467:
                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                              if(!(_loc28_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1476:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1481:
                                                                                                                                                                                    addr1479:
                                                                                                                                                                                    §§push(_loc8_.col2.y);
                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1489:
                                                                                                                                                                                       §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1495:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                    addr1497:
                                                                                                                                                                                    _loc8_ = param4.R;
                                                                                                                                                                                    _loc7_ = param1.m_localPoint;
                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param4.position);
                                                                                                                                                                                       loop124:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_.col1);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr1697:
                                                                                                                                                                                                addr1595:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                   if(_loc29_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr1708:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc8_.col2);
                                                                                                                                                                                                            addr1710:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                                                                               addr1711:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc7_.y);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1707:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1713:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr1714:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc8_.col1);
                                                                                                                                                                                                if(_loc28_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc29_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_.col2);
                                                                                                                                                                                                                     if(_loc29_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                        if(_loc29_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1655:
                                                                                                                                                                                                                              §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(_loc29_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1715:
                                                                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1673:
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§9+§);
                                                                                                                                                                                                                                                loop137:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                                                                                                                   addr1572:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                                                                      addr1573:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                                                                         addr1574:
                                                                                                                                                                                                                                                         addr1949:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop137;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1949:
                                                                                                                                                                                                                                                         if(§§pop() < param1.§^M§)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc8_ = param2.R;
                                                                                                                                                                                                                                                            _loc7_ = param1.§1!d§[_loc6_].m_localPoint;
                                                                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr1945:
                                                                                                                                                                                                                                                               addr1946:
                                                                                                                                                                                                                                                               addr1921:
                                                                                                                                                                                                                                                               §§push(param2.position.x);
                                                                                                                                                                                                                                                               if(_loc29_ || param3)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1944:
                                                                                                                                                                                                                                                                  §§push(_loc8_.col1.x);
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1938:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * _loc7_.x);
                                                                                                                                                                                                                                                                     §§push(_loc8_.col2.x * _loc7_.y);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc13_ = Number(§§pop());
                                                                                                                                                                                                                                                               addr1947:
                                                                                                                                                                                                                                                               §§push(param2.position);
                                                                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc8_.col1);
                                                                                                                                                                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop().y);
                                                                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc7_.x);
                                                                                                                                                                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc29_ || param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc29_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc8_.col2);
                                                                                                                                                                                                                                                                                          if(_loc29_ || param3)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1893:
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                                                                                                                   if(_loc29_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc29_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1908:
                                                                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                               if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                     this.§1!d§[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                                                                                                                                                                                                                                                                                                                     addr1761:
                                                                                                                                                                                                                                                                                                                     this.§1!d§[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                                                                                                                                                                                                                                                                                                                     _loc6_++;
                                                                                                                                                                                                                                                                                                                     addr1918:
                                                                                                                                                                                                                                                                                                                     addr1816:
                                                                                                                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1761);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr1948:
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1949);
                                                                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1947);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1918);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1816);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1788:
                                                                                                                                                                                                                                                                                                                     §§goto(addr1788);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1938);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1945);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1946);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1908);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1938);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1944);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1938);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1893);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1938);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1908);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1893);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1938);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1893);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1944);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1908);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1921);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1761);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1688:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1952);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1708);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                       continue loop124;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1716);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1716:
                                                                                                                                                                                                                                    addr1715:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1673);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1697);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1714);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1655);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1710);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1673);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1655);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1713);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1655);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1707);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1711);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1655);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1715);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1688);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1495);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1489);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1495);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1497);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1495);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1467);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1476);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1489);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1443);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1481);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1479);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1443);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1481);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1464);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1378);
                                                                                                                                 }
                                                                                                                                 continue loop101;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr1150:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           continue loop87;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1149:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr1145:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                               addr1147:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1148:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr1149);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr969);
                                                                                             }
                                                                                             §§goto(addr932);
                                                                                          }
                                                                                          §§goto(addr936);
                                                                                       }
                                                                                       §§goto(addr929);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr932);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr902);
                                                                        }
                                                                        §§goto(addr932);
                                                                     }
                                                                     §§goto(addr931);
                                                                  }
                                                                  §§goto(addr932);
                                                               }
                                                               §§goto(addr921);
                                                            }
                                                            §§goto(addr881);
                                                         }
                                                      }
                                                      §§goto(addr932);
                                                   }
                                                   §§goto(addr894);
                                                }
                                                §§goto(addr932);
                                             case 2:
                                                §§goto(addr1382);
                                          }
                                          param4.R;
                                          return;
                                          addr2054:
                                          addr2029:
                                       }
                                       else
                                       {
                                          addr2039:
                                          if(§§pop() === _loc27_)
                                          {
                                             addr2041:
                                             §§push(2);
                                             if(_loc29_ || param2)
                                             {
                                             }
                                             §§goto(addr2054);
                                          }
                                          else
                                          {
                                             §§goto(addr2054);
                                             §§push(3);
                                          }
                                          §§goto(addr2054);
                                       }
                                       §§goto(addr2054);
                                    }
                                    §§goto(addr2041);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§#[§);
                                    if(!(_loc28_ && this))
                                    {
                                       §§goto(addr2039);
                                    }
                                 }
                              }
                              §§goto(addr2039);
                           }
                           §§goto(addr2054);
                        }
                        §§goto(addr2011);
                     }
                     else
                     {
                        §§push(b2Manifold.§;1§);
                        if(!(_loc28_ && this))
                        {
                           §§goto(addr2000);
                        }
                        §§goto(addr2029);
                     }
                  }
                  §§goto(addr2039);
               }
               §§goto(addr2054);
            }
            §§goto(addr2041);
         }
         §§goto(addr2054);
      }
   }
}
