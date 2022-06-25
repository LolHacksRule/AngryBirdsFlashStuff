package §6!9§
{
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §]=§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §6!+§:b2Vec2;
      
      private static var §7!f§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §6!+§ = new b2Vec2();
            do
            {
               §7!f§ = new b2Vec2();
            }
            while(_loc2_ && b2PositionSolverManifold);
            
         }
      }
      
      public var §9O§:b2Vec2;
      
      public var §`!$§:Vector.<b2Vec2>;
      
      public var §?!4§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§9O§ = new b2Vec2();
               loop1:
               for(; !(_loc3_ && _loc3_); while(true)
               {
                  this.§`!$§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc3_ && _loc1_)
                  {
                     continue loop1;
                  }
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr42);
               },§§push(0),if(!_loc3_)
               {
                  §§push(int(§§pop()));
               },var _loc1_:* = §§pop(),while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           loop5:
                           while(!(_loc2_ || this))
                           {
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 continue loop5;
                              }
                           }
                           continue;
                        }
                        this.§`!$§[_loc1_] = new b2Vec2();
                        while(true)
                        {
                           §§push(_loc1_);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() + 1);
                           }
                           §§goto(addr128);
                        }
                     }
                     while(true)
                     {
                     }
                  }
                  §§goto(addr128);
               },return)
               {
                  while(true)
                  {
                     this.§?!4§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §;o§(param1:b2ContactConstraint) : void
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
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(_loc18_)
         {
            b2Settings.b2Assert(param1.§<!8§ > 0);
         }
         §§push(param1.type);
         if(_loc18_)
         {
            var _loc17_:* = §§pop();
            if(!(_loc19_ && _loc3_))
            {
               §§push(b2Manifold.§8!G§);
               if(_loc18_)
               {
                  §§push(_loc17_);
                  if(_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc18_ || _loc3_)
                        {
                           §§push(0);
                           if(!_loc18_)
                           {
                              addr1899:
                           }
                        }
                        else
                        {
                           addr1929:
                           §§push(2);
                           if(_loc19_ && this)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§,!0§);
                        if(_loc18_ || this)
                        {
                           §§push(_loc17_);
                           if(!(_loc19_ && this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc18_)
                                 {
                                    addr1891:
                                    §§push(1);
                                    if(!(_loc19_ && this))
                                    {
                                       §§goto(addr1899);
                                    }
                                    else
                                    {
                                       addr1921:
                                       if(§§pop() === _loc17_)
                                       {
                                          if(_loc18_ || param1)
                                          {
                                             §§goto(addr1929);
                                          }
                                          addr1946:
                                          loop101:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = param1.§^!G§.m_xf.R;
                                                _loc6_ = param1.localPoint;
                                                if(!(_loc19_ && param1))
                                                {
                                                   §§push(param1.§^!G§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(§§pop().position);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc5_.col1);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§push(_loc5_.col2);
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr143:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                addr162:
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr167:
                                                                                                   addr165:
                                                                                                   §§push(param1.§^!G§.m_xf);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr171:
                                                                                                      §§push(§§pop().position.y);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         addr176:
                                                                                                         §§push(_loc5_.col1.y);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr179:
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr183:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr200:
                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     addr196:
                                                                                                                     §§push(§§pop() * _loc6_.y);
                                                                                                                  }
                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr203:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  _loc10_ = §§pop();
                                                                                                               }
                                                                                                               §§goto(addr200);
                                                                                                            }
                                                                                                            §§goto(addr196);
                                                                                                         }
                                                                                                         §§goto(addr200);
                                                                                                      }
                                                                                                      §§goto(addr203);
                                                                                                   }
                                                                                                   addr208:
                                                                                                   _loc5_ = §§pop().R;
                                                                                                   _loc6_ = param1.§5o§[0].localPoint;
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(param1.§-z§);
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().m_xf);
                                                                                                         if(_loc18_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop().position);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr641:
                                                                                                               addr576:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_.col1);
                                                                                                                  addr643:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr651:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.col2);
                                                                                                                              addr653:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr651:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           addr656:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr657:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr658:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    addr659:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr660:
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
                                                                                                                        addr654:
                                                                                                                     }
                                                                                                                     §§goto(addr651);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop().position);
                                                                                                               if(_loc19_ && _loc3_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(§§pop().y);
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc5_.col1);
                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop12:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 if(_loc19_ && param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 loop13:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    loop14:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       loop15:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop16:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr627:
                                                                                                                                             loop17:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                loop18:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      continue loop11;
                                                                                                                                                      addr521:
                                                                                                                                                      if(!(_loc19_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop27:
                                                                                                                                                            while(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc14_ = §§pop();
                                                                                                                                                                  while(_loc18_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     addr264:
                                                                                                                                                                     if(!(_loc18_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     this.§?!4§[0] = _loc13_ * this.§9O§.x + _loc14_ * this.§9O§.y - param1.radius;
                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(true)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop101;
                                                                                                                                                                              }
                                                                                                                                                                              loop42:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§`!$§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                 addr262:
                                                                                                                                                                                 while(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr264);
                                                                                                                                                                                 }
                                                                                                                                                                                 loop53:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                                                    addr437:
                                                                                                                                                                                    loop54:
                                                                                                                                                                                    while(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr439:
                                                                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc16_ = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§9O§);
                                                                                                                                                                                                loop45:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr378:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr379:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                      addr380:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§9O§);
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr449:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             loop31:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr463:
                                                                                                                                                                                                   if(_loc19_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                                                                   loop32:
                                                                                                                                                                                                   while(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop14;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop13;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr508:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        break loop54;
                                                                                                                                                                                                                        §§goto(addr439);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr508:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr651);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr658);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                            addr413:
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            if(!(_loc18_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop32;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop53;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(this.§9O§);
                                                                                                                                                                                                            loop37:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().x = 1;
                                                                                                                                                                                                               addr333:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc19_ && this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop37;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr380);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr370);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr557:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc12_);
                                                                                                                                                                                                                  break loop31;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr521);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     addr556:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                        §§goto(addr557);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr555:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr392:
                                                                                                                                                                                                               if(_loc19_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr413);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr641);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr660);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                         addr516:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr657);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr516);
                                                                                                                                                                                                §§goto(addr463);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr461:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr508);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr392);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr452);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr437);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr508);
                                                                                                                                                                                          addr297:
                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr519);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr556);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr249:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr297);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr333);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr323);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr512);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr262);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr659);
                                                                                                                                                            }
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr656);
                                                                                                                              }
                                                                                                                              §§goto(addr653);
                                                                                                                           }
                                                                                                                           §§goto(addr654);
                                                                                                                        }
                                                                                                                        §§goto(addr624);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr643);
                                                                                                               }
                                                                                                               §§goto(addr627);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr667:
                                                                                                            _loc5_ = §§pop().R;
                                                                                                            _loc6_ = param1.§>v§;
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(this.§9O§);
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.col1);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.col2);
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr711:
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(!(_loc19_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                addr738:
                                                                                                                                                §§push(this.§9O§);
                                                                                                                                                §§push(_loc5_.col1.y);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr741:
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr772:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr758:
                                                                                                                                                         §§push(_loc5_.col2.y);
                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                         {
                                                                                                                                                            addr768:
                                                                                                                                                            §§push(§§pop() * _loc6_.y);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      _loc5_ = param1.§^!G§.m_xf.R;
                                                                                                                                                      _loc6_ = param1.localPoint;
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§^!G§);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().m_xf);
                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().position);
                                                                                                                                                               if(_loc18_ || _loc3_)
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
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 addr837:
                                                                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr866:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                                                                      if(!(_loc19_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr890:
                                                                                                                                                                                                         §§push(param1.§^!G§.m_xf);
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr894:
                                                                                                                                                                                                            §§push(§§pop().position.y);
                                                                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr902:
                                                                                                                                                                                                               §§push(_loc5_.col1.y);
                                                                                                                                                                                                               if(!(_loc19_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr912:
                                                                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr916:
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr924:
                                                                                                                                                                                                                        §§push(_loc5_.col2.y);
                                                                                                                                                                                                                        if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr937:
                                                                                                                                                                                                                           §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr937);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr947:
                                                                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                                                                        _loc5_ = param1.§-z§.m_xf.R;
                                                                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr977:
                                                                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr985:
                                                                                                                                                                                                                                    loop79:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc2_);
                                                                                                                                                                                                                                       addr1221:
                                                                                                                                                                                                                                       while(§§pop() < param1.§<!8§)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc6_ = param1.§5o§[_loc2_].localPoint;
                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param1.§-z§);
                                                                                                                                                                                                                                             loop59:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().m_xf);
                                                                                                                                                                                                                                                addr1197:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().position);
                                                                                                                                                                                                                                                   addr1198:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                      addr1199:
                                                                                                                                                                                                                                                      loop62:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_.col1);
                                                                                                                                                                                                                                                         addr1201:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr1166:
                                                                                                                                                                                                                                                                  if(_loc19_ && param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1178:
                                                                                                                                                                                                                                                                     addr1179:
                                                                                                                                                                                                                                                                     §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1187:
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop62;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                                                                        loop73:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§?!4§[_loc2_] = (_loc3_ - _loc7_) * this.§9O§.x + (_loc4_ - _loc8_) * this.§9O§.y - param1.radius;
                                                                                                                                                                                                                                                                           loop74:
                                                                                                                                                                                                                                                                           while(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§`!$§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                              loop75:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1037:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§`!$§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                    addr1044:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop73;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop74;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop75;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop59;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        addr1215:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr1216:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr1214:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     addr1218:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                                                                                                                        continue loop59;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1207:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_.col2);
                                                                                                                                                                                                                                                               addr1209:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1214);
                                                                                                                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1215);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1035);
                                                                                                                                                                                                                                          continue loop79;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break loop101;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1221);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr977);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr985);
                                                                                                                                                                                                                        addr946:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr947);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr937);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr924);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr946);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr947);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr902);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr912);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr937);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr866);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr924);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr912);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr916);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr837);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr902);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr894);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr947);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr890);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr772);
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr758);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr772);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr768);
                                                                                                                              }
                                                                                                                              §§goto(addr758);
                                                                                                                           }
                                                                                                                           §§goto(addr741);
                                                                                                                        }
                                                                                                                        §§goto(addr711);
                                                                                                                     }
                                                                                                                     §§goto(addr772);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr738);
                                                                                                            }
                                                                                                            §§goto(addr772);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                §§goto(addr208);
                                                                                                §§push(param1.§-z§.m_xf);
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          §§goto(addr162);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    §§goto(addr183);
                                                                                 }
                                                                              }
                                                                              §§goto(addr196);
                                                                           }
                                                                        }
                                                                        §§goto(addr200);
                                                                     }
                                                                     §§goto(addr143);
                                                                  }
                                                                  §§goto(addr179);
                                                               }
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr165);
                                             case 1:
                                                §§goto(addr667);
                                             case 2:
                                                _loc5_ = param1.§-z§.m_xf.R;
                                                _loc6_ = param1.§>v§;
                                                §§push(param1.§^!G§.m_xf);
                                                if(_loc18_ || _loc3_)
                                                {
                                                   §§push(this.§9O§);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(_loc18_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(_loc5_.col2);
                                                                  if(!(_loc19_ && this))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc19_ && _loc3_))
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    addr1330:
                                                                                    §§push(this.§9O§);
                                                                                    §§push(_loc5_.col1.y);
                                                                                    if(!(_loc19_ && this))
                                                                                    {
                                                                                       §§push(_loc6_.x);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          addr1347:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr1364:
                                                                                             addr1363:
                                                                                             addr1350:
                                                                                             addr1352:
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(!(_loc19_ && _loc3_))
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                             }
                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                             _loc5_ = param1.§-z§.m_xf.R;
                                                                                             _loc6_ = param1.localPoint;
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(param1.§-z§);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().m_xf);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§push(§§pop().position);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(_loc5_.col1);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc18_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(!(_loc19_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    addr1438:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          addr1449:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                             {
                                                                                                                                                addr1462:
                                                                                                                                                addr1460:
                                                                                                                                                §§push(param1.§-z§.m_xf);
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   addr1471:
                                                                                                                                                   §§push(§§pop().position.y);
                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr1481:
                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr1510:
                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr1506:
                                                                                                                                                                  §§push(§§pop() * _loc6_.y);
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr1514:
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  §§push(param1.§^!G§.m_xf);
                                                                                                                                                                  addr1513:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1514);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1510);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1506);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1510);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1514);
                                                                                                                                                }
                                                                                                                                                _loc5_ = §§pop().R;
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                            }
                                                                                                                                                            addr1764:
                                                                                                                                                         }
                                                                                                                                                         addr1820:
                                                                                                                                                         addr1834:
                                                                                                                                                         addr1824:
                                                                                                                                                         addr1822:
                                                                                                                                                         §§push(this.§9O§);
                                                                                                                                                         §§push(this.§9O§.y);
                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            addr1833:
                                                                                                                                                            §§push(§§pop() * -1);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   loop81:
                                                                                                                                                   for(; §§pop() < param1.§<!8§; §§goto(addr1764))
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = param1.§5o§[_loc2_].localPoint;
                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§^!G§);
                                                                                                                                                         loop82:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().m_xf);
                                                                                                                                                            addr1736:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().position);
                                                                                                                                                               addr1737:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr1738:
                                                                                                                                                                  loop85:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_.col1);
                                                                                                                                                                     addr1740:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        addr1741:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           loop88:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1758:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1759:
                                                                                                                                                                                    addr1679:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                                                                    if(_loc19_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1696:
                                                                                                                                                                                       if(!(_loc19_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop88;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1710:
                                                                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1729:
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop85;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§?!4§[_loc2_] = (_loc3_ - _loc7_) * this.§9O§.x + (_loc4_ - _loc8_) * this.§9O§.y - param1.radius;
                                                                                                                                                                                                         loop97:
                                                                                                                                                                                                         while(!(_loc19_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop99:
                                                                                                                                                                                                               do
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§`!$§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc19_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + 1);
                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop99;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop97;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop82;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(false);
                                                                                                                                                                                                               
                                                                                                                                                                                                               continue loop81;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1761:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1761:
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                   continue loop82;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1729);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1758);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1759);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1710);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr1760:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr1761);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1621);
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§9O§);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§9O§);
                                                                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc18_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(-1);
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1812:
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1820);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1834);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1833);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1812);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1824);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1822);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1820);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1514);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1513);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1514);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1510);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1506);
                                                                                                                           }
                                                                                                                           §§goto(addr1438);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1510);
                                                                                                                  }
                                                                                                                  §§goto(addr1438);
                                                                                                               }
                                                                                                               §§goto(addr1510);
                                                                                                            }
                                                                                                            §§goto(addr1481);
                                                                                                         }
                                                                                                         §§goto(addr1449);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1471);
                                                                                                }
                                                                                                §§goto(addr1462);
                                                                                             }
                                                                                             §§goto(addr1460);
                                                                                          }
                                                                                          §§goto(addr1364);
                                                                                       }
                                                                                       §§goto(addr1363);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1364);
                                                                              }
                                                                              §§goto(addr1350);
                                                                           }
                                                                           §§goto(addr1347);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr1364);
                                                                  }
                                                                  §§goto(addr1352);
                                                               }
                                                               §§goto(addr1364);
                                                            }
                                                            §§goto(addr1347);
                                                         }
                                                         §§goto(addr1364);
                                                      }
                                                   }
                                                   §§goto(addr1330);
                                                }
                                                §§goto(addr1364);
                                          }
                                          return;
                                          addr1945:
                                       }
                                       else
                                       {
                                          if(true)
                                          {
                                             §§goto(addr1945);
                                             §§push(3);
                                          }
                                          §§goto(addr1945);
                                       }
                                    }
                                    §§goto(addr1945);
                                 }
                                 §§push(3);
                                 if(_loc19_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§#,§);
                                 if(_loc19_ && param1)
                                 {
                                 }
                              }
                              §§goto(addr1945);
                           }
                        }
                        §§goto(addr1921);
                     }
                     §§goto(addr1945);
                  }
                  §§goto(addr1921);
               }
               §§goto(addr1899);
            }
            §§goto(addr1891);
         }
         §§goto(addr1946);
      }
   }
}
