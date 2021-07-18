package §%4§
{
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §&!5§:b2Vec2;
      
      public var §5S§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            this.§&!5§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§5S§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §&!§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         if(_loc28_)
         {
            if(param1.§`!>§ == 0)
            {
               if(_loc28_)
               {
                  §§goto(addr68);
               }
            }
            §§push(param1.§0!,§);
            if(_loc28_ || param3)
            {
               var _loc27_:* = §§pop();
               if(!_loc29_)
               {
                  §§push(b2Manifold.§%"#§);
                  if(_loc28_)
                  {
                     §§push(_loc27_);
                     if(!_loc29_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc28_ || this)
                           {
                              addr1946:
                              §§push(0);
                              if(!_loc28_)
                              {
                                 addr1968:
                              }
                              addr1998:
                              loop146:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.m_localPoint;
                                    if(!(_loc29_ && this))
                                    {
                                       §§push(param2.position);
                                       if(_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc8_.col1);
                                             if(!_loc29_)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc29_)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc28_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc28_ || param2)
                                                      {
                                                         addr117:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc29_ && this))
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     addr141:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc28_ || param2)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr155:
                                                                              _loc15_ = §§pop();
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr160:
                                                                                 §§push(param2.position.y);
                                                                                 if(!(_loc29_ && param2))
                                                                                 {
                                                                                    addr168:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(!(_loc29_ && param1))
                                                                                    {
                                                                                       addr178:
                                                                                       §§push(_loc7_.x);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc29_ && param3))
                                                                                             {
                                                                                                addr195:
                                                                                                §§push(_loc8_.col2.y);
                                                                                                if(!(_loc29_ && param2))
                                                                                                {
                                                                                                   addr206:
                                                                                                   §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                   if(!(_loc29_ && param2))
                                                                                                   {
                                                                                                      addr214:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr206);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr206);
                                                                                 }
                                                                                 _loc16_ = §§pop();
                                                                                 addr216:
                                                                                 _loc8_ = param4.R;
                                                                                 _loc7_ = param1.§5S§[0].m_localPoint;
                                                                                 if(_loc28_ || this)
                                                                                 {
                                                                                    §§push(param4.position);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr795:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          addr797:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr798:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.x);
                                                                                                addr800:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr801:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr802:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr804:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr805:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                               addr807:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr808:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr809:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr810:
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
                                                                                 §§goto(addr741);
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr155);
                                                                     }
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr155);
                                       }
                                    }
                                    §§goto(addr160);
                                 case 1:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.§5!=§;
                                    if(_loc28_)
                                    {
                                       §§push(_loc8_.col1);
                                       if(_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc28_)
                                          {
                                             §§push(_loc7_.x);
                                             if(_loc28_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc28_ || param1)
                                                {
                                                   §§push(_loc8_.col2);
                                                   if(_loc28_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc28_ || param1)
                                                      {
                                                         addr860:
                                                         §§push(_loc7_.y);
                                                         if(_loc28_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc28_ || param1)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc29_ && param3))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr893:
                                                                        §§push(_loc8_.col1.y);
                                                                        if(!(_loc29_ && this))
                                                                        {
                                                                           addr901:
                                                                           §§push(_loc7_.x);
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr925:
                                                                              addr905:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr908:
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(!(_loc29_ && param3))
                                                                                 {
                                                                                    addr918:
                                                                                    §§push(§§pop() * _loc7_.y);
                                                                                 }
                                                                              }
                                                                              _loc10_ = §§pop();
                                                                              _loc8_ = param2.R;
                                                                              _loc7_ = param1.m_localPoint;
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§push(param2.position);
                                                                                 loop81:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    loop82:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       loop83:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop84:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr1123:
                                                                                                      addr1025:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                      }
                                                                                                      if(!(_loc28_ || param2))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc8_.col1);
                                                                                                      if(!(_loc28_ || param1))
                                                                                                      {
                                                                                                         continue loop83;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!(_loc29_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc29_ && param1))
                                                                                                            {
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!_loc29_)
                                                                                                                  {
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        continue loop82;
                                                                                                                     }
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc29_)
                                                                                                                        {
                                                                                                                           addr1075:
                                                                                                                           if(_loc28_)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ || this))
                                                                                                                              {
                                                                                                                                 continue loop84;
                                                                                                                              }
                                                                                                                              addr1086:
                                                                                                                              §§push(_loc7_.y);
                                                                                                                              if(!(_loc29_ && this))
                                                                                                                              {
                                                                                                                                 addr1094:
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    addr1097:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 if(!(_loc29_ && param2))
                                                                                                                                 {
                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                    loop93:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§&!5§);
                                                                                                                                       loop94:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          loop95:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§&!5§);
                                                                                                                                                   if(_loc28_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc10_);
                                                                                                                                                      if(_loc28_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!(_loc29_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               addr1354:
                                                                                                                                                               if(§§pop() < param1.§`!>§)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param4.R);
                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                     _loc7_ = param1.§5S§[_loc6_].m_localPoint;
                                                                                                                                                                     if(_loc28_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param4.position);
                                                                                                                                                                        loop99:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1323:
                                                                                                                                                                           loop100:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc8_.col1);
                                                                                                                                                                              addr1325:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc7_.x);
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_.col2);
                                                                                                                                                                                             addr1343:
                                                                                                                                                                                             addr1274:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr1344:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc7_.y);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc28_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc8_.col2);
                                                                                                                                                                                             if(_loc28_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1295:
                                                                                                                                                                                                   §§push(_loc7_.y);
                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1298:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1308:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc29_ && param3)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop100;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§5S§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                                               addr1231:
                                                                                                                                                                                                               loop110:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1167:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§5S§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                                                     continue loop110;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1347:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                                                                         continue loop99;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1346:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1346:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1347);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1298);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1343);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1344);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1346);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1344);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1231);
                                                                                                                                                                  }
                                                                                                                                                                  addr1361:
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  _loc7_ = param1.§5!=§;
                                                                                                                                                                  if(!(_loc29_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.col1);
                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!(_loc29_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_.x);
                                                                                                                                                                           if(!(_loc29_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc29_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc8_.col2);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                       if(!(_loc29_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1422:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!(_loc29_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                   if(_loc28_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1448:
                                                                                                                                                                                                      §§push(_loc8_.col1.y);
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1451:
                                                                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            if(!_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1458:
                                                                                                                                                                                                               §§push(_loc8_.col2.y);
                                                                                                                                                                                                               if(!(_loc29_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1471:
                                                                                                                                                                                                                  addr1470:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1475:
                                                                                                                                                                                                                  _loc10_ = §§pop();
                                                                                                                                                                                                                  _loc8_ = param4.R;
                                                                                                                                                                                                                  _loc7_ = param1.m_localPoint;
                                                                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param4.position);
                                                                                                                                                                                                                     loop113:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        addr1654:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc8_.col1);
                                                                                                                                                                                                                           addr1656:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                                                                              if(!(_loc29_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_.x);
                                                                                                                                                                                                                                 if(!_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr1670:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc8_.col2);
                                                                                                                                                                                                                                          addr1672:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             addr1673:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc7_.y);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1669:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1675:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1676:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 if(!_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1680:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                                                                                                                    continue loop113;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1506);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1471);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1475);
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1471);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1471);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1458);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1471);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1470);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1471);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1458);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1451);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1422);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1471);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1448);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1471);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop93;
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop95;
                                                                                                                                                   }
                                                                                                                                                   continue loop94;
                                                                                                                                                }
                                                                                                                                                addr960:
                                                                                                                                             }
                                                                                                                                             break loop146;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr1126:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr1127:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr1128:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr1126:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                 continue loop81;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1127);
                                                                                                                        }
                                                                                                                        §§goto(addr1094);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1123);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1097);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr1126);
                                                                                                               }
                                                                                                               addr1124:
                                                                                                            }
                                                                                                            §§goto(addr1075);
                                                                                                         }
                                                                                                         §§goto(addr1086);
                                                                                                      }
                                                                                                      §§goto(addr1094);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1124);
                                                                                             }
                                                                                             §§goto(addr1126);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr958);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc28_)
                                                                           {
                                                                              §§goto(addr925);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr925);
                                                                        }
                                                                        §§goto(addr908);
                                                                     }
                                                                     §§goto(addr925);
                                                                  }
                                                               }
                                                               §§goto(addr901);
                                                            }
                                                         }
                                                         §§goto(addr918);
                                                      }
                                                      §§goto(addr905);
                                                   }
                                                   §§goto(addr908);
                                                }
                                                §§goto(addr925);
                                             }
                                             §§goto(addr860);
                                          }
                                          §§goto(addr925);
                                       }
                                    }
                                    §§goto(addr893);
                                 case 2:
                                    §§goto(addr1361);
                              }
                              param4.R;
                              return;
                              addr1998:
                           }
                           else
                           {
                              addr1965:
                              §§push(1);
                              if(_loc28_)
                              {
                                 §§goto(addr1968);
                              }
                              else
                              {
                                 addr1973:
                                 if(§§pop() === _loc27_)
                                 {
                                    addr1975:
                                    §§push(2);
                                    if(_loc29_ && param2)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr1998);
                           }
                           §§goto(addr1968);
                        }
                        else
                        {
                           §§push(b2Manifold.§`!5§);
                           if(!_loc29_)
                           {
                              §§push(_loc27_);
                              if(_loc28_ || this)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc29_)
                                    {
                                       §§goto(addr1965);
                                    }
                                    §§goto(addr1975);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§&O§);
                                    if(_loc28_)
                                    {
                                       §§goto(addr1973);
                                    }
                                 }
                                 §§goto(addr1998);
                              }
                              §§goto(addr1973);
                           }
                        }
                     }
                     §§goto(addr1973);
                  }
                  §§goto(addr1968);
               }
            }
            §§goto(addr1946);
         }
         addr68:
      }
   }
}
