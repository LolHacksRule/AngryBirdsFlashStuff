package §8Y§
{
   import §0!G§.*;
   import §2!F§.*;
   import §9"§.*;
   import §`j§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §1i§:b2Vec2;
      
      private static var §;$§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §1i§ = new b2Vec2();
         }
         do
         {
            §;$§ = new b2Vec2();
         }
         while(_loc2_);
         
      }
      
      public var §^3§:b2Vec2;
      
      public var §<s§:Vector.<b2Vec2>;
      
      public var §?!H§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         while(true)
         {
            this.§^3§ = new b2Vec2();
            loop1:
            while(!_loc2_)
            {
               loop2:
               do
               {
                  this.§?!H§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  while(_loc3_)
                  {
                     this.§<s§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     if(!_loc2_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc1_:int = 0;
               while(true)
               {
                  if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!(_loc2_ && _loc3_))
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§<s§[_loc1_] = new b2Vec2();
                  }
                  _loc1_++;
               }
               return;
            }
         }
      }
      
      public function §>b§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(_loc18_ || param1)
         {
            b2Settings.b2Assert(param1.§`5§ > 0);
         }
         §§push(param1.type);
         if(!_loc19_)
         {
            var _loc17_:* = §§pop();
            if(_loc18_ || param1)
            {
               §§push(b2Manifold.§4A§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc19_)
                        {
                           §§push(0);
                           if(!(_loc18_ || _loc3_))
                           {
                              addr1800:
                              §§push(_loc17_);
                              if(_loc18_ || param1)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc19_)
                                    {
                                       addr1811:
                                       §§push(1);
                                       if(!_loc18_)
                                       {
                                          addr1839:
                                       }
                                    }
                                    else
                                    {
                                       addr1821:
                                       §§push(2);
                                       if(!(_loc19_ && _loc2_))
                                       {
                                          §§goto(addr1839);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§5!8§);
                                    if(_loc18_)
                                    {
                                       addr1820:
                                       if(§§pop() === _loc17_)
                                       {
                                          §§goto(addr1821);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr1820);
                           }
                           §§goto(addr1845);
                        }
                        §§goto(addr1811);
                     }
                     else
                     {
                        §§push(b2Manifold.§0!&§);
                        if(!_loc19_)
                        {
                           §§goto(addr1800);
                        }
                     }
                  }
                  §§goto(addr1820);
               }
               §§goto(addr1800);
            }
            §§goto(addr1821);
         }
         addr1845:
         loop90:
         switch(§§pop())
         {
            case 0:
               _loc5_ = param1.§8!5§.m_xf.R;
               _loc6_ = param1.localPoint;
               if(_loc18_ || _loc2_)
               {
                  §§push(param1.§8!5§);
                  if(_loc18_)
                  {
                     §§push(§§pop().m_xf);
                     if(!_loc19_)
                     {
                        §§push(§§pop().position);
                        if(!(_loc19_ && param1))
                        {
                           §§push(§§pop().x);
                           if(_loc18_ || _loc2_)
                           {
                              §§push(_loc5_.col1);
                              if(!_loc19_)
                              {
                                 §§push(§§pop().x);
                                 if(_loc18_)
                                 {
                                    §§push(_loc6_.x);
                                    if(!_loc19_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc19_)
                                       {
                                          §§push(_loc5_.col2);
                                          if(!(_loc19_ && this))
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc19_)
                                             {
                                                §§push(_loc6_.y);
                                                if(!(_loc19_ && this))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                         addr149:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc18_ || this)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(!_loc19_)
                                                            {
                                                               _loc9_ = §§pop();
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr170:
                                                                  addr168:
                                                                  §§push(param1.§8!5§.m_xf);
                                                                  if(_loc18_)
                                                                  {
                                                                     addr174:
                                                                     §§push(§§pop().position.y);
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr179:
                                                                        addr177:
                                                                        §§push(_loc5_.col1.y);
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(_loc18_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc19_ && _loc2_))
                                                                              {
                                                                                 addr199:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr207:
                                                                                    §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                           }
                                                                           §§goto(addr207);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc19_ && this))
                                                                        {
                                                                           addr217:
                                                                           _loc10_ = §§pop();
                                                                        }
                                                                     }
                                                                     §§goto(addr217);
                                                                  }
                                                                  addr221:
                                                                  _loc5_ = §§pop().R;
                                                                  _loc6_ = param1.§5n§[0].localPoint;
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(param1.§0n§);
                                                                     loop0:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().m_xf);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop().position);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              addr668:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_.col1);
                                                                                 addr670:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    addr671:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.x);
                                                                                       addr673:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr674:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_.col2);
                                                                                             addr676:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr677:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   addr679:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr680:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr681:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr682:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr683:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc11_ = §§pop();
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
                                                                           addr667:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr690:
                                                                           _loc5_ = §§pop().R;
                                                                           _loc6_ = param1.§"S§;
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              §§push(this.§^3§);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(_loc5_.col1);
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       §§push(_loc6_.x);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc19_ && _loc2_))
                                                                                          {
                                                                                             §§push(_loc5_.col2);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            if(_loc18_ || this)
                                                                                                            {
                                                                                                               addr783:
                                                                                                               §§push(this.§^3§);
                                                                                                               §§push(_loc5_.col1.y);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr778:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr795:
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     _loc5_ = param1.§8!5§.m_xf.R;
                                                                                                                     _loc6_ = param1.localPoint;
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(param1.§8!5§);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().m_xf);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().position);
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.col2);
                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!(_loc19_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr888:
                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr893:
                                                                                                                                                                        §§push(param1.§8!5§.m_xf);
                                                                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr902:
                                                                                                                                                                           §§push(§§pop().position.y);
                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              addr910:
                                                                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr925:
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(!(_loc19_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr946:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr955:
                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                       _loc5_ = param1.§0n§.m_xf.R;
                                                                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr985:
                                                                                                                                                                                                loop72:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                                                                   addr1189:
                                                                                                                                                                                                   while(§§pop() < param1.§`5§)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc6_ = param1.§5n§[_loc2_].localPoint;
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(param1.§0n§);
                                                                                                                                                                                                         loop53:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop().m_xf);
                                                                                                                                                                                                            addr1165:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().position);
                                                                                                                                                                                                               addr1166:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                  addr1167:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_.col1);
                                                                                                                                                                                                                     addr1169:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr1175:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                                                                                                                 addr1177:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1182:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr1183:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1174:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1184:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           addr1185:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr1186:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1161);
                                                                                                                                                                                                      continue loop72;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop90;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1189);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr985);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr955);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr945:
                                                                                                                                                                                 §§goto(addr946);
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc5_.col2.y);
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr942:
                                                                                                                                                                                 §§goto(addr945);
                                                                                                                                                                                 §§push(§§pop() * _loc6_.y);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr945);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr955);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr910);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr946);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr942);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr945);
                                                                                                                                                }
                                                                                                                                                §§goto(addr910);
                                                                                                                                             }
                                                                                                                                             §§goto(addr925);
                                                                                                                                          }
                                                                                                                                          §§goto(addr942);
                                                                                                                                       }
                                                                                                                                       §§goto(addr946);
                                                                                                                                    }
                                                                                                                                    §§goto(addr910);
                                                                                                                                 }
                                                                                                                                 §§goto(addr888);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr902);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr893);
                                                                                                                  }
                                                                                                                  addr791:
                                                                                                                  §§goto(addr795);
                                                                                                                  §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                               }
                                                                                                               §§push(_loc5_.col2.y);
                                                                                                               if(_loc19_ && param1)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr791);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr795);
                                                                                                      }
                                                                                                      §§goto(addr778);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr791);
                                                                                             }
                                                                                             §§goto(addr783);
                                                                                          }
                                                                                          §§goto(addr778);
                                                                                       }
                                                                                       §§goto(addr791);
                                                                                    }
                                                                                    §§goto(addr778);
                                                                                 }
                                                                              }
                                                                              §§goto(addr783);
                                                                           }
                                                                           §§goto(addr778);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr288);
                                                               }
                                                               §§goto(addr221);
                                                               §§push(param1.§0n§.m_xf);
                                                            }
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                }
                                             }
                                             §§goto(addr207);
                                          }
                                       }
                                       §§goto(addr199);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr170);
               }
               §§goto(addr168);
            case 1:
               §§goto(addr690);
            case 2:
               _loc5_ = param1.§0n§.m_xf.R;
               _loc6_ = param1.§"S§;
               §§push(param1.§8!5§.m_xf);
               if(_loc18_)
               {
                  §§push(this.§^3§);
                  if(!(_loc19_ && _loc3_))
                  {
                     §§push(_loc5_.col1);
                     if(_loc18_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(_loc18_)
                        {
                           §§push(_loc6_.x);
                           if(!_loc19_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc19_)
                              {
                                 addr1234:
                                 §§push(_loc5_.col2);
                                 if(!(_loc19_ && this))
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc19_ && _loc3_))
                                    {
                                       §§push(_loc6_.y);
                                       if(!(_loc19_ && _loc3_))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc19_)
                                             {
                                                §§pop().x = §§pop();
                                                if(_loc18_)
                                                {
                                                   addr1273:
                                                   §§push(this.§^3§);
                                                   §§push(_loc5_.col1.y);
                                                   if(!(_loc19_ && this))
                                                   {
                                                      §§push(_loc6_.x);
                                                      if(_loc18_)
                                                      {
                                                         addr1302:
                                                         addr1285:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc18_)
                                                         {
                                                            addr1288:
                                                            §§push(_loc5_.col2.y);
                                                            if(!(_loc19_ && _loc3_))
                                                            {
                                                               addr1300:
                                                               §§push(§§pop() * _loc6_.y);
                                                            }
                                                         }
                                                         §§pop().y = §§pop();
                                                         _loc5_ = param1.§0n§.m_xf.R;
                                                         _loc6_ = param1.localPoint;
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(param1.§0n§);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop().m_xf);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(§§pop().position);
                                                                  if(!(_loc19_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc5_.col1);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              §§push(_loc6_.x);
                                                                              if(_loc18_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc18_ || _loc2_)
                                                                                 {
                                                                                    §§push(_loc5_.col2);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          §§push(_loc6_.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            addr1420:
                                                                                                            addr1418:
                                                                                                            §§push(param1.§0n§.m_xf);
                                                                                                            if(!(_loc19_ && param1))
                                                                                                            {
                                                                                                               addr1429:
                                                                                                               §§push(§§pop().position.y);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  addr1434:
                                                                                                                  §§push(_loc5_.col1.y);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.x);
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        addr1446:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr1451:
                                                                                                                           §§push(_loc5_.col2.y);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              addr1457:
                                                                                                                              §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                                              if(!(_loc19_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr1467:
                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                 §§push(param1.§8!5§.m_xf);
                                                                                                                                 addr1466:
                                                                                                                              }
                                                                                                                              §§goto(addr1467);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1457);
                                                                                                               }
                                                                                                               §§goto(addr1466);
                                                                                                            }
                                                                                                            _loc5_ = §§pop().R;
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     loop73:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        addr1717:
                                                                                                                        loop74:
                                                                                                                        for(; §§pop() < param1.§`5§; continue loop73)
                                                                                                                        {
                                                                                                                           _loc6_ = param1.§5n§[_loc2_].localPoint;
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(param1.§8!5§);
                                                                                                                              loop75:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().m_xf);
                                                                                                                                 addr1667:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().position);
                                                                                                                                    addr1668:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.col1);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr1679:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_.col2);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1704:
                                                                                                                                                               addr1636:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                               if(_loc19_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr1649:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1660:
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§?!H§[_loc2_] = (_loc3_ - _loc7_) * this.§^3§.x + (_loc4_ - _loc8_) * this.§^3§.y - param1.radius;
                                                                                                                                                                           addr1568:
                                                                                                                                                                           loop87:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              addr1520:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§<s§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                 continue loop87;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop74;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc19_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop75;
                                                                                                                                                                           }
                                                                                                                                                                           _loc2_++;
                                                                                                                                                                           if(!(_loc19_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop74;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1520);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1528);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1705:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1705:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                     continue loop75;
                                                                                                                                                                  }
                                                                                                                                                                  addr1714:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr1704);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1705);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1704);
                                                                                                                                                      }
                                                                                                                                                      addr1693:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1705);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1704);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr1678:
                                                                                                                                       }
                                                                                                                                       §§goto(addr1714);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1568);
                                                                                                                        }
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(this.§^3§);
                                                                                                                           if(!(_loc19_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(this.§^3§);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(-1);
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          addr1762:
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             addr1756:
                                                                                                                                             §§push(this.§^3§);
                                                                                                                                             §§push(this.§^3§.y);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1760:
                                                                                                                                                §§push(§§pop() * -1);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break loop90;
                                                                                                                                       }
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       §§goto(addr1762);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1760);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1756);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1762);
                                                                                                               }
                                                                                                               §§goto(addr1717);
                                                                                                            }
                                                                                                            §§goto(addr1756);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1467);
                                                                                                }
                                                                                                §§goto(addr1457);
                                                                                             }
                                                                                             §§goto(addr1446);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1457);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1451);
                                                                              }
                                                                              §§goto(addr1446);
                                                                           }
                                                                           §§goto(addr1451);
                                                                        }
                                                                        §§goto(addr1434);
                                                                     }
                                                                     §§goto(addr1467);
                                                                  }
                                                               }
                                                               §§goto(addr1429);
                                                            }
                                                            §§goto(addr1420);
                                                         }
                                                         §§goto(addr1418);
                                                      }
                                                      §§goto(addr1302);
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                                §§goto(addr1302);
                                             }
                                             §§goto(addr1288);
                                          }
                                          §§goto(addr1285);
                                       }
                                    }
                                    §§goto(addr1300);
                                 }
                                 §§goto(addr1288);
                              }
                           }
                           §§goto(addr1302);
                        }
                        §§goto(addr1234);
                     }
                  }
               }
               §§goto(addr1273);
         }
      }
   }
}
