package §>!Z§
{
   import §&H§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §6!P§:b2Vec2;
      
      public var § !C§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!P§ = new b2Vec2();
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
            this.§ !C§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            if(!_loc3_)
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
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§ !C§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §`!D§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Number = NaN;
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
         if(!_loc28_)
         {
            if(param1.§&!h§ == 0)
            {
               if(!_loc28_)
               {
                  return;
               }
            }
         }
         §§push(param1.§3r§);
         if(!_loc28_)
         {
            var _loc27_:* = §§pop();
            if(_loc29_ || this)
            {
               §§push(b2Manifold.§+!,§);
               if(!_loc28_)
               {
                  §§push(_loc27_);
                  if(!(_loc28_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc29_)
                        {
                           addr1947:
                           §§push(0);
                           if(!(_loc29_ || param3))
                           {
                              addr2014:
                           }
                        }
                        else
                        {
                           addr2006:
                           §§push(2);
                           if(_loc29_ || param3)
                           {
                              §§goto(addr2014);
                           }
                        }
                        addr2019:
                        loop117:
                        switch(§§pop())
                        {
                           case 0:
                              _loc8_ = param2.R;
                              _loc7_ = param1.m_localPoint;
                              if(_loc29_ || param2)
                              {
                                 §§push(param2.position);
                                 if(_loc29_ || param3)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc29_)
                                    {
                                       §§push(_loc8_.col1);
                                       if(_loc29_ || param2)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc29_ || param2)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc29_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!_loc28_)
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
                                                            addr133:
                                                            §§push(_loc7_.y);
                                                            if(!_loc28_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     addr153:
                                                                     §§push(Number(§§pop()));
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc15_ = §§pop();
                                                                        if(!(_loc28_ && this))
                                                                        {
                                                                           addr166:
                                                                           §§push(param2.position.y);
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr169:
                                                                              §§push(_loc8_.col1.y);
                                                                              if(_loc29_)
                                                                              {
                                                                                 §§push(_loc7_.x);
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    addr183:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc29_ || param3)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          addr199:
                                                                                          §§push(_loc8_.col2.y);
                                                                                          if(!_loc28_)
                                                                                          {
                                                                                             addr207:
                                                                                             addr206:
                                                                                             addr204:
                                                                                             §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                             }
                                                                                             addr211:
                                                                                             _loc16_ = §§pop();
                                                                                             _loc8_ = param4.R;
                                                                                             _loc7_ = param1.§ !C§[0].m_localPoint;
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(param4.position);
                                                                                                loop0:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr791:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      addr793:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr794:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.x);
                                                                                                            addr796:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               addr797:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr798:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     addr800:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr801:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           addr803:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr804:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr805:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr806:
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
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                              §§goto(addr207);
                                                                           }
                                                                           §§goto(addr199);
                                                                        }
                                                                     }
                                                                     §§goto(addr207);
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                            }
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                }
                                                §§goto(addr133);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              §§goto(addr166);
                           case 1:
                              _loc8_ = param2.R;
                              _loc7_ = param1.§1!§;
                              if(!(_loc28_ && param3))
                              {
                                 §§push(_loc8_.col1);
                                 if(!(_loc28_ && param1))
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc28_)
                                    {
                                       §§push(_loc7_.x);
                                       if(_loc29_ || param2)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc29_ || param3)
                                          {
                                             §§push(_loc8_.col2);
                                             if(!_loc28_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc7_.y);
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc29_ || param3)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc28_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc28_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!_loc28_)
                                                               {
                                                                  addr889:
                                                                  §§push(_loc8_.col1.y);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr892:
                                                                     §§push(_loc7_.x);
                                                                     if(_loc29_)
                                                                     {
                                                                        addr920:
                                                                        addr921:
                                                                        addr896:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc28_)
                                                                        {
                                                                           addr899:
                                                                           §§push(_loc8_.col2.y);
                                                                           if(!(_loc28_ && param2))
                                                                           {
                                                                              addr911:
                                                                              §§push(§§pop() * _loc7_.y);
                                                                           }
                                                                        }
                                                                        _loc10_ = Number(§§pop());
                                                                        _loc8_ = param2.R;
                                                                        _loc7_ = param1.m_localPoint;
                                                                        if(!_loc28_)
                                                                        {
                                                                           §§push(param2.position);
                                                                           loop86:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!(_loc28_ && param2))
                                                                              {
                                                                                 §§push(_loc8_.col1);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr1096:
                                                                                    addr972:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       addr1098:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr1099:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc28_ && param3))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col2);
                                                                                                   addr1109:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr1110:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.y);
                                                                                                         addr1112:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr1113:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr1114:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr1107:
                                                                                             }
                                                                                             addr1115:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                continue loop86;
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
                                                                                    if(_loc29_ || param2)
                                                                                    {
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(_loc7_.x);
                                                                                          if(!(_loc28_ && this))
                                                                                          {
                                                                                             if(!(_loc28_ && param3))
                                                                                             {
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      if(!(_loc28_ && param3))
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               addr1039:
                                                                                                               if(_loc29_)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        addr1048:
                                                                                                                        if(_loc29_ || param1)
                                                                                                                        {
                                                                                                                           addr1057:
                                                                                                                           §§push(§§pop() * _loc7_.y);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1113);
                                                                                                                        }
                                                                                                                        §§goto(addr1115);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                     {
                                                                                                                        addr1066:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     if(!(_loc28_ && param3))
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                        {
                                                                                                                           §§push(this.§6!P§);
                                                                                                                           loop93:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              loop94:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§6!P§);
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(_loc29_)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   addr1360:
                                                                                                                                                   if(§§pop() < param1.§&!h§)
                                                                                                                                                   {
                                                                                                                                                      §§push(param4.R);
                                                                                                                                                      if(!(_loc28_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         _loc7_ = param1.§ !C§[_loc6_].m_localPoint;
                                                                                                                                                         if(_loc29_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr1318:
                                                                                                                                                            §§push(param4.position.x);
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               addr1326:
                                                                                                                                                               §§push(_loc8_.col1.x * _loc7_.x);
                                                                                                                                                               if(!(_loc28_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr1357:
                                                                                                                                                                  addr1356:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr1344:
                                                                                                                                                                     §§push(_loc8_.col2.x * _loc7_.y);
                                                                                                                                                                  }
                                                                                                                                                                  _loc13_ = §§pop();
                                                                                                                                                                  addr1358:
                                                                                                                                                                  §§push(param4.position);
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(_loc29_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col1);
                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(!(_loc28_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc7_.x);
                                                                                                                                                                                 if(!(_loc28_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc29_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc29_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1274:
                                                                                                                                                                                          if(_loc29_ || param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1284:
                                                                                                                                                                                                §§push(_loc8_.col2);
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1291:
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1295:
                                                                                                                                                                                                         §§push(_loc7_.y);
                                                                                                                                                                                                         if(!(_loc28_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1303:
                                                                                                                                                                                                            §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1306:
                                                                                                                                                                                                               if(_loc29_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1314:
                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                  this.§ !C§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                                                  addr1208:
                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc29_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1151:
                                                                                                                                                                                                                        this.§ !C§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_++;
                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1149:
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1151);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1360);
                                                                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1151);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1208);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1358);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1315:
                                                                                                                                                                                                                  §§goto(addr1315);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1357);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1314);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1326);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!(_loc28_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr1356);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1357);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1303);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1344);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1306);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1344);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1291);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1344);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1295);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1326);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1274);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1326);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1284);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1318);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1291);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1357);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1149);
                                                                                                                                                      }
                                                                                                                                                      addr1367:
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      _loc7_ = param1.§1!§;
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_.col1);
                                                                                                                                                         if(_loc29_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.x);
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc29_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.col2);
                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1421:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1424:
                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1434:
                                                                                                                                                                                          §§push(_loc8_.col1.y);
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_.x);
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1446:
                                                                                                                                                                                                   §§push(_loc8_.col2.y);
                                                                                                                                                                                                   if(_loc29_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1457:
                                                                                                                                                                                                      §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1460:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1457);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1460);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1457);
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                          addr1462:
                                                                                                                                                                                          _loc8_ = param4.R;
                                                                                                                                                                                          _loc7_ = param1.m_localPoint;
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param4.position);
                                                                                                                                                                                             loop102:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_.col1);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                      if(_loc29_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc28_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_.col2);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1656:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                                                                           addr1658:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1656:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr1659:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        addr1660:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr1661:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc11_ = §§pop();
                                                                                                                                                                                                                              continue loop102;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1653:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1660);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1656);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1658);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1656);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1628:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1660);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1623:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop110:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param4.position);
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc29_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_.col1);
                                                                                                                                                                                                   if(_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      if(!(_loc28_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc7_.x);
                                                                                                                                                                                                            if(_loc29_ || param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1594:
                                                                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc8_.col2);
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1610:
                                                                                                                                                                                                                              §§push(_loc7_.y);
                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1613:
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1616:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§6!P§);
                                                                                                                                                                                                                                       loop112:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                                                                          addr1535:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                             addr1536:
                                                                                                                                                                                                                                             addr1917:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc29_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop112;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop110;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             break loop117;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1658);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1661);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1613);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr1653);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1660);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1616);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1613);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1610);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1659);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1613);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr1628);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1594);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1623);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1462);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1460);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1424);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1457);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1446);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1424);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1457);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1421);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1434);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop86;
                                                                                                                                          }
                                                                                                                                          continue loop94;
                                                                                                                                       }
                                                                                                                                       continue loop93;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1363:
                                                                                                                        break loop117;
                                                                                                                     }
                                                                                                                     §§goto(addr1115);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1109);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1114);
                                                                                                            }
                                                                                                            §§goto(addr1066);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1096);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1099);
                                                                                                   }
                                                                                                   §§goto(addr1048);
                                                                                                }
                                                                                                §§goto(addr1098);
                                                                                             }
                                                                                             §§goto(addr1112);
                                                                                          }
                                                                                          §§goto(addr1057);
                                                                                       }
                                                                                       §§goto(addr1110);
                                                                                    }
                                                                                    §§goto(addr1048);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1107);
                                                                           }
                                                                        }
                                                                        §§goto(addr1363);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc29_ || param2)
                                                                     {
                                                                        §§goto(addr920);
                                                                     }
                                                                  }
                                                                  §§goto(addr921);
                                                               }
                                                            }
                                                            §§goto(addr920);
                                                         }
                                                         §§goto(addr899);
                                                      }
                                                      §§goto(addr896);
                                                   }
                                                   §§goto(addr911);
                                                }
                                                §§goto(addr920);
                                             }
                                          }
                                          §§goto(addr899);
                                       }
                                       §§goto(addr920);
                                    }
                                    §§goto(addr892);
                                 }
                                 §§goto(addr889);
                              }
                              §§goto(addr920);
                           case 2:
                              §§goto(addr1367);
                        }
                        param4.R;
                        return;
                        addr2019:
                     }
                     else
                     {
                        §§push(b2Manifold.§-!-§);
                        if(_loc29_ || this)
                        {
                           §§push(_loc27_);
                           if(_loc29_ || this)
                           {
                              addr1973:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc28_ && this))
                                 {
                                    §§push(1);
                                    if(_loc28_)
                                    {
                                       addr2004:
                                       if(§§pop() !== _loc27_)
                                       {
                                          §§goto(addr2019);
                                          §§push(3);
                                       }
                                    }
                                    §§goto(addr2019);
                                 }
                                 §§goto(addr2006);
                              }
                              else
                              {
                                 §§push(b2Manifold.§3!J§);
                                 if(_loc29_ || param1)
                                 {
                                    §§goto(addr2004);
                                 }
                              }
                              §§goto(addr2019);
                           }
                           §§goto(addr2004);
                        }
                        §§goto(addr2014);
                     }
                     §§goto(addr2014);
                  }
                  §§goto(addr1973);
               }
               §§goto(addr2014);
            }
            §§goto(addr1947);
         }
         §§goto(addr2019);
      }
   }
}
