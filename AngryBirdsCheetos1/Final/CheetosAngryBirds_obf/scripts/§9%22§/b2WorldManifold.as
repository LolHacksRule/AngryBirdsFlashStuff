package §9"§
{
   import §0!G§.*;
   import §2!F§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §^3§:b2Vec2;
      
      public var §<s§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^3§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        this.§<s§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
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
               if(_loc3_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§<s§[_loc1_] = new b2Vec2();
               while(true)
               {
                  _loc1_++;
               }
               addr100:
            }
            while(!_loc3_)
            {
               §§goto(addr100);
            }
         }
      }
      
      public function §>b§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         var _loc13_:Number = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
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
         if(!(_loc28_ && param1))
         {
            if(param1.§!$§ == 0)
            {
               if(!(_loc28_ && this))
               {
                  §§goto(addr79);
               }
            }
            §§push(param1.§8!J§);
            if(!_loc28_)
            {
               var _loc27_:* = §§pop();
               if(_loc29_)
               {
                  §§push(b2Manifold.§4A§);
                  if(!_loc28_)
                  {
                     §§push(_loc27_);
                     if(!(_loc28_ && param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc28_ && param1))
                           {
                              §§push(0);
                              if(_loc29_)
                              {
                                 addr1999:
                                 loop115:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.m_localPoint;
                                       if(_loc29_)
                                       {
                                          §§push(param2.position);
                                          if(_loc29_ || param1)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc28_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(_loc29_ || param3)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc29_ || param2)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc28_ && param3))
                                                            {
                                                               §§push(_loc8_.col2);
                                                               if(_loc29_ || param2)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc29_)
                                                                  {
                                                                     §§push(_loc7_.y);
                                                                     if(_loc29_ || param2)
                                                                     {
                                                                        addr162:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc28_ && param3))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc29_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr181:
                                                                                 _loc15_ = §§pop();
                                                                                 if(_loc29_ || param2)
                                                                                 {
                                                                                    addr191:
                                                                                    §§push(param2.position.y);
                                                                                    if(!(_loc28_ && param2))
                                                                                    {
                                                                                       addr199:
                                                                                       §§push(_loc8_.col1.y);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          addr204:
                                                                                          §§push(_loc7_.x);
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr208:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr211:
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!(_loc28_ && param1))
                                                                                                {
                                                                                                   addr232:
                                                                                                   §§push(_loc8_.col2.y);
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      addr229:
                                                                                                      §§push(_loc7_.y);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      addr241:
                                                                                                      _loc16_ = §§pop();
                                                                                                      _loc8_ = param4.R;
                                                                                                      _loc7_ = param1.§<s§[0].m_localPoint;
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr757:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               addr759:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  if(_loc29_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     if(_loc29_ || param3)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr778:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_.col2);
                                                                                                                              addr780:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr781:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr777:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     addr783:
                                                                                                                  }
                                                                                                                  addr784:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr785:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr786:
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
                                                                                                      §§goto(addr692);
                                                                                                      addr240:
                                                                                                   }
                                                                                                   §§goto(addr241);
                                                                                                }
                                                                                                §§goto(addr240);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr232);
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr241);
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           §§goto(addr181);
                                                                        }
                                                                        §§goto(addr204);
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr162);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr232);
                                          }
                                       }
                                       §§goto(addr191);
                                    case 1:
                                       _loc8_ = param2.R;
                                       _loc7_ = param1.§9]§;
                                       if(_loc29_)
                                       {
                                          §§push(_loc8_.col1);
                                          if(!_loc28_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc29_)
                                             {
                                                §§push(_loc7_.x);
                                                if(!(_loc28_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc29_)
                                                   {
                                                      §§push(_loc8_.col2);
                                                      if(!(_loc28_ && param1))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            §§push(_loc7_.y);
                                                            if(_loc29_ || param3)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc29_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc29_ || param2)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc29_)
                                                                     {
                                                                        addr859:
                                                                        _loc9_ = §§pop();
                                                                        if(_loc29_ || param3)
                                                                        {
                                                                           addr869:
                                                                           §§push(_loc8_.col1.y);
                                                                           if(!(_loc28_ && this))
                                                                           {
                                                                              §§push(_loc7_.x);
                                                                              if(!(_loc28_ && param3))
                                                                              {
                                                                                 addr886:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc28_)
                                                                                 {
                                                                                    addr889:
                                                                                    §§push(_loc8_.col2.y);
                                                                                    if(!(_loc28_ && param1))
                                                                                    {
                                                                                       addr902:
                                                                                       addr901:
                                                                                       addr899:
                                                                                       §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                       if(_loc29_ || param1)
                                                                                       {
                                                                                       }
                                                                                       addr911:
                                                                                       _loc10_ = §§pop();
                                                                                       _loc8_ = param2.R;
                                                                                       _loc7_ = param1.m_localPoint;
                                                                                       if(_loc29_ || this)
                                                                                       {
                                                                                          §§push(param2.position);
                                                                                          loop81:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr1076:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.col1);
                                                                                                addr1078:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr1079:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_.x);
                                                                                                      if(_loc29_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc29_ || this)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr1100:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.y);
                                                                                                                     addr1102:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1103:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr1099:
                                                                                                            }
                                                                                                            addr1104:
                                                                                                            addr1039:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr1105:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
                                                                                                                  continue loop81;
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc28_ && param2)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(_loc7_.y);
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               addr1051:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc29_ || param3)
                                                                                                               {
                                                                                                                  addr1067:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc28_ && param3))
                                                                                                                  {
                                                                                                                     addr1066:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     if(_loc29_)
                                                                                                                     {
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        loop93:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§^3§);
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
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§^3§);
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          if(_loc29_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc29_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop96;
                                                                                                                                                         }
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         addr1349:
                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop() < param1.§!$§)
                                                                                                                                                   {
                                                                                                                                                      §§push(param4.R);
                                                                                                                                                      if(_loc29_ || param2)
                                                                                                                                                      {
                                                                                                                                                         _loc8_ = §§pop();
                                                                                                                                                         _loc7_ = param1.§<s§[_loc6_].m_localPoint;
                                                                                                                                                         if(_loc29_)
                                                                                                                                                         {
                                                                                                                                                            addr1313:
                                                                                                                                                            §§push(param4.position.x);
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               addr1318:
                                                                                                                                                               §§push(_loc8_.col1.x);
                                                                                                                                                               if(_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_.x);
                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc28_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr1342:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        §§push(_loc8_.col2.x);
                                                                                                                                                                        §§push(_loc7_.y);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1342);
                                                                                                                                                                  }
                                                                                                                                                                  addr1347:
                                                                                                                                                                  _loc13_ = §§pop() + §§pop() * §§pop();
                                                                                                                                                                  addr1348:
                                                                                                                                                                  addr1346:
                                                                                                                                                                  addr1344:
                                                                                                                                                                  addr1345:
                                                                                                                                                                  §§push(param4.position);
                                                                                                                                                                  if(_loc29_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col1);
                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(!(_loc28_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!(_loc28_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc8_.col2);
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(_loc29_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1286:
                                                                                                                                                                                                   §§push(_loc7_.y);
                                                                                                                                                                                                   if(_loc29_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1294:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc29_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1305:
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc29_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                                                                  this.§<s§[_loc6_].x = _loc13_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc9_;
                                                                                                                                                                                                                  addr1143:
                                                                                                                                                                                                                  this.§<s§[_loc6_].y = _loc14_ + 0.5 * (param3 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param5) * _loc10_;
                                                                                                                                                                                                                  addr1207:
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc29_ || param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc6_++;
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc29_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1143);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1349);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1207);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1143);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1348);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1310:
                                                                                                                                                                                                                  §§goto(addr1310);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1342);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1346);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1305);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1342);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1344);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1294);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1342);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1347);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1305);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1345);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1294);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1286);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1294);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1318);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1305);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1313);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1342);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1347);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1143);
                                                                                                                                                      }
                                                                                                                                                      addr1357:
                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                      _loc7_ = param1.§9]§;
                                                                                                                                                      if(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc8_.col1);
                                                                                                                                                         if(_loc29_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_.x);
                                                                                                                                                               if(_loc29_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc8_.col2);
                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc29_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1403:
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc29_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    if(!(_loc28_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1419:
                                                                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1424:
                                                                                                                                                                                          §§push(_loc8_.col1.y);
                                                                                                                                                                                          if(_loc29_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_.x);
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc29_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1446:
                                                                                                                                                                                                   §§push(_loc8_.col2.y);
                                                                                                                                                                                                   if(_loc29_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1457:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc29_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1466:
                                                                                                                                                                                                      _loc10_ = Number(§§pop());
                                                                                                                                                                                                      _loc8_ = param4.R;
                                                                                                                                                                                                      _loc7_ = param1.m_localPoint;
                                                                                                                                                                                                      if(_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param4.position);
                                                                                                                                                                                                         loop98:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                            if(!(_loc28_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc8_.col1);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        addr1682:
                                                                                                                                                                                                                        addr1574:
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
                                                                                                                                                                                                                                 addr1686:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc7_.y);
                                                                                                                                                                                                                                    addr1688:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc29_ || this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           if(_loc29_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_.col2);
                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(_loc29_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1604:
                                                                                                                                                                                                                                    if(_loc29_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr1620:
                                                                                                                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1628:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(_loc29_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1638:
                                                                                                                                                                                                                                                   if(_loc29_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc29_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc29_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1655:
                                                                                                                                                                                                                                                            _loc12_ = Number(§§pop());
                                                                                                                                                                                                                                                            loop110:
                                                                                                                                                                                                                                                            for(; !(_loc28_ && param3); if(!(_loc29_ || param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            },§§goto(addr1499))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§^3§);
                                                                                                                                                                                                                                                               loop111:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc9_);
                                                                                                                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop112:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                     if(_loc28_ && param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                                                                     addr1504:
                                                                                                                                                                                                                                                                     continue loop110;
                                                                                                                                                                                                                                                                     if(_loc29_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                                                                           if(!(_loc29_ || this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break loop112;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1913:
                                                                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                                                                 addr1499:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§^3§);
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1504);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop111;
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(§§pop() < param1.§!$§)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc8_ = param2.R;
                                                                                                                                                                                                                                                                           _loc7_ = param1.§<s§[_loc6_].m_localPoint;
                                                                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1887:
                                                                                                                                                                                                                                                                              §§push(param2.position.x);
                                                                                                                                                                                                                                                                              §§push(_loc8_.col1.x);
                                                                                                                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1911:
                                                                                                                                                                                                                                                                                 addr1910:
                                                                                                                                                                                                                                                                                 addr1909:
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr1903:
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    §§push(_loc8_.col2.x * _loc7_.y);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 _loc13_ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                 addr1912:
                                                                                                                                                                                                                                                                                 §§push(param2.position);
                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc8_.col1);
                                                                                                                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc8_.col2);
                                                                                                                                                                                                                                                                                                               if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1843:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1856:
                                                                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc29_ || param3)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              addr1866:
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc29_ || param3)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr1876:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       this.§<s§[_loc6_].x = _loc13_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc9_;
                                                                                                                                                                                                                                                                                                                                       addr1715:
                                                                                                                                                                                                                                                                                                                                       this.§<s§[_loc6_].y = _loc14_ + 0.5 * (param5 - (_loc13_ - _loc11_) * _loc9_ - (_loc14_ - _loc12_) * _loc10_ - param3) * _loc10_;
                                                                                                                                                                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             _loc6_++;
                                                                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1715);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1913);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1715);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1876);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1784:
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1784);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1912);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1887);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1911);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1903);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1910);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1866);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1903);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1856);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1843);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1903);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1843);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1887);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1909);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1843);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1887);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1856);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1887);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1903);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1715);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1917:
                                                                                                                                                                                                                                                                  break loop115;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop98;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1683);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1690:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc11_ = §§pop();
                                                                                                                                                                                                                                                      continue loop98;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1691:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1655);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr1682);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1688);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1686);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1690);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1689:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1628);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1685);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1638);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1604);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1689);
                                                                                                                                                                                                                  addr1558:
                                                                                                                                                                                                                  §§push(_loc8_.col1);
                                                                                                                                                                                                                  if(_loc28_ && param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1574);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1620);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1628);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1691);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1917);
                                                                                                                                                                                                      addr1465:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1466);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1456:
                                                                                                                                                                                             §§goto(addr1457);
                                                                                                                                                                                             §§push(§§pop() * _loc7_.y);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1466);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1465);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1419);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1457);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1456);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1403);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1446);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1419);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1403);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1466);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1424);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1466);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop81;
                                                                                                                                             }
                                                                                                                                             continue loop93;
                                                                                                                                          }
                                                                                                                                          continue loop95;
                                                                                                                                       }
                                                                                                                                       continue loop94;
                                                                                                                                    }
                                                                                                                                    break loop115;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr1072:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1104);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1105);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr1100);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1102);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1102);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1072);
                                                                                    }
                                                                                    §§goto(addr902);
                                                                                 }
                                                                                 §§goto(addr911);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§goto(addr902);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr902);
                                                                  }
                                                                  §§goto(addr889);
                                                               }
                                                               §§goto(addr886);
                                                            }
                                                            §§goto(addr901);
                                                         }
                                                         §§goto(addr886);
                                                      }
                                                   }
                                                   §§goto(addr889);
                                                }
                                                §§goto(addr899);
                                             }
                                             §§goto(addr859);
                                          }
                                          §§goto(addr869);
                                       }
                                       §§goto(addr902);
                                    case 2:
                                       §§goto(addr1357);
                                 }
                                 param4.R;
                                 return;
                                 addr1999:
                              }
                           }
                           else
                           {
                              addr1966:
                              §§push(1);
                              if(!_loc29_)
                              {
                              }
                           }
                           §§goto(addr1999);
                        }
                        else
                        {
                           §§push(b2Manifold.§0!&§);
                           if(_loc29_)
                           {
                              §§push(_loc27_);
                              if(!(_loc28_ && param2))
                              {
                                 addr1963:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc29_)
                                    {
                                       §§goto(addr1966);
                                    }
                                    else
                                    {
                                       addr1976:
                                       §§push(2);
                                       if(!(_loc28_ && param3))
                                       {
                                          §§goto(addr1994);
                                       }
                                       §§goto(addr1999);
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§5!8§);
                                    if(!_loc28_)
                                    {
                                       addr1974:
                                       §§push(_loc27_);
                                    }
                                    §§goto(addr1999);
                                 }
                                 §§goto(addr1999);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr1976);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           §§goto(addr1974);
                        }
                     }
                     §§goto(addr1963);
                  }
                  §§goto(addr1974);
               }
               §§goto(addr1966);
            }
            §§goto(addr1999);
         }
         addr79:
      }
   }
}
