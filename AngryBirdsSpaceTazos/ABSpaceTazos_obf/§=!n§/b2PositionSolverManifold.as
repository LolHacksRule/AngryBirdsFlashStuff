package §=!n§
{
   import §'!&§.*;
   import §3c§.*;
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §2!,§:b2Vec2;
      
      private static var §0!e§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2!,§ = new b2Vec2();
            do
            {
               §0!e§ = new b2Vec2();
            }
            while(!(_loc2_ || b2PositionSolverManifold));
            
         }
      }
      
      public var §?!A§:b2Vec2;
      
      public var §,!T§:Vector.<b2Vec2>;
      
      public var §+$§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         while(true)
         {
            this.§?!A§ = new b2Vec2();
            while(_loc3_)
            {
               while(true)
               {
                  this.§+$§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  do
                  {
                     this.§,!T§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(!_loc3_);
                  
                  if(_loc3_)
                  {
                     if(true)
                     {
                        var _loc1_:int = 0;
                        while(true)
                        {
                           if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              loop5:
                              while(_loc2_ && _loc1_)
                              {
                                 while(true)
                                 {
                                    _loc1_++;
                                    continue loop5;
                                 }
                              }
                              continue;
                           }
                           this.§,!T§[_loc1_] = new b2Vec2();
                           §§goto(addr112);
                        }
                     }
                     continue;
                     return;
                  }
                  break;
               }
            }
         }
      }
      
      public function §>`§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
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
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         if(!(_loc18_ && param1))
         {
            b2Settings.b2Assert(param1.§9">§ > 0);
         }
         §§push(param1.type);
         if(_loc19_)
         {
            var _loc17_:* = §§pop();
            if(_loc19_ || param1)
            {
               §§push(b2Manifold.§#m§);
               if(!_loc18_)
               {
                  §§push(_loc17_);
                  if(!(_loc18_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc19_ || this)
                        {
                           addr1823:
                           §§push(0);
                           if(_loc18_ && this)
                           {
                              addr1841:
                              §§push(_loc17_);
                              if(_loc19_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc18_ && _loc2_))
                                    {
                                       addr1852:
                                       §§push(1);
                                       if(_loc19_ || this)
                                       {
                                          addr1896:
                                          loop96:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = param1.§+,§.m_xf.R;
                                                _loc6_ = param1.localPoint;
                                                if(_loc19_ || param1)
                                                {
                                                   §§push(param1.§+,§);
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(_loc19_ || _loc2_)
                                                      {
                                                         §§push(§§pop().position);
                                                         if(!(_loc18_ && _loc2_))
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc5_.col1);
                                                               if(_loc19_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     §§push(_loc6_.x);
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_ || _loc2_)
                                                                        {
                                                                           addr138:
                                                                           §§push(_loc5_.col2);
                                                                           if(_loc19_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(!(_loc18_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr162:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc19_ || this)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr176:
                                                                                                _loc9_ = §§pop();
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   addr186:
                                                                                                   §§push(param1.§+,§.m_xf);
                                                                                                   if(!(_loc18_ && _loc3_))
                                                                                                   {
                                                                                                      addr195:
                                                                                                      §§push(§§pop().position.y);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         addr198:
                                                                                                         §§push(_loc5_.col1.y);
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               addr224:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  addr217:
                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     addr220:
                                                                                                                     §§push(§§pop() * _loc6_.y);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  addr233:
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  _loc5_ = param1.§"R§.m_xf.R;
                                                                                                                  _loc6_ = param1.§?!%§[0].localPoint;
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(param1.§"R§);
                                                                                                                     loop0:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_xf);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().position);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              loop2:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                 loop3:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    loop4:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       loop5:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr688:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   addr690:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr691:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr629:
                                                                                                                                                §§push(_loc5_.col2);
                                                                                                                                                if(!(_loc19_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                loop49:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_ && _loc2_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            loop16:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop17:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop18:
                                                                                                                                                                  while(_loc19_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     _loc12_ = §§pop();
                                                                                                                                                                     loop19:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                        loop20:
                                                                                                                                                                        while(!(_loc18_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                                                                 if(!(_loc19_ || _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop3;
                                                                                                                                                                              addr593:
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              loop21:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 addr559:
                                                                                                                                                                                 while(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc13_ = §§pop();
                                                                                                                                                                                       loop24:
                                                                                                                                                                                       while(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          loop25:
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             loop26:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc13_);
                                                                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop26;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr415:
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop21;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr484:
                                                                                                                                                                                                                  if(!(_loc19_ || _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr496:
                                                                                                                                                                                                                     _loc15_ = §§pop();
                                                                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr504:
                                                                                                                                                                                                                        if(!(_loc19_ || param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr516:
                                                                                                                                                                                                                        §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§?!A§);
                                                                                                                                                                                                                              loop41:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().x = 1;
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§?!A§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                             addr387:
                                                                                                                                                                                                                                             addr336:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                addr388:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                   addr389:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                                                                                                                      addr390:
                                                                                                                                                                                                                                                      while(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§?!A§);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc19_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   loop43:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr317:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.§,!T§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                                                                         addr328:
                                                                                                                                                                                                                                                         while(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               this.§,!T§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop24;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                                                                            §§goto(addr380);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr379:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr387);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr388);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr389);
                                                                                                                                                                                                                                                addr366:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr379);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr366);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr524);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_ && _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop4;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                                                                              if(_loc18_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!(_loc19_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop16;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr629);
                                                                                                                                                                                                                              §§goto(addr516);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              addr693:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 break loop25;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr603:
                                                                                                                                                                                                                           addr692:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr528);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr516);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr415);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop18;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr693);
                                                                                                                                                                           §§goto(addr603);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr691);
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr690);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr692);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr584:
                                                                                                                              §§push(§§pop().position);
                                                                                                                              if(!(_loc19_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr593);
                                                                                                                              §§push(§§pop().y);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr701:
                                                                                                                           _loc5_ = §§pop().R;
                                                                                                                           _loc6_ = param1.§]q§;
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              §§push(this.§?!A§);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(_loc19_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                             if(_loc19_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr760:
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc18_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr792:
                                                                                                                                                               §§push(this.§?!A§);
                                                                                                                                                               §§push(_loc5_.col1.y);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr795:
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr814:
                                                                                                                                                                        §§push(_loc5_.col2.y);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr821:
                                                                                                                                                                           §§pop().y = §§pop() + §§pop() * _loc6_.y;
                                                                                                                                                                           addr820:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr820);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr821);
                                                                                                                                                            }
                                                                                                                                                            _loc5_ = param1.§+,§.m_xf.R;
                                                                                                                                                            _loc6_ = param1.localPoint;
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1.§+,§);
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().m_xf);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().position);
                                                                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.col1);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(_loc19_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc5_.col2);
                                                                                                                                                                                       if(_loc19_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          if(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr900:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc19_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr908:
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr916:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr929:
                                                                                                                                                                                                               §§push(param1.§+,§.m_xf);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr933:
                                                                                                                                                                                                                  §§push(§§pop().position.y);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr936:
                                                                                                                                                                                                                     §§push(_loc5_.col1.y);
                                                                                                                                                                                                                     if(!(_loc18_ && this))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr956:
                                                                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                                                                        if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr965:
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr987:
                                                                                                                                                                                                                              §§push(_loc5_.col2.y);
                                                                                                                                                                                                                              if(_loc19_ || _loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr983:
                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr991:
                                                                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                                                                 _loc5_ = param1.§"R§.m_xf.R;
                                                                                                                                                                                                                                 if(_loc19_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                                                                                                                       if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc2_);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1259:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1263:
                                                                                                                                                                                                                                       break loop96;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop53:
                                                                                                                                                                                                                                    for(; §§pop() < param1.§9">§; §§goto(addr1259))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc6_ = param1.§?!%§[_loc2_].localPoint;
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1.§"R§);
                                                                                                                                                                                                                                          loop54:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().m_xf);
                                                                                                                                                                                                                                             addr1238:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().position);
                                                                                                                                                                                                                                                addr1239:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                   addr1240:
                                                                                                                                                                                                                                                   loop57:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_.col1);
                                                                                                                                                                                                                                                      addr1242:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         addr1243:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_.col2);
                                                                                                                                                                                                                                                                  addr1250:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                                                                     addr1251:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                                                                                                                        addr1253:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1201:
                                                                                                                                                                                                                                                                  if(_loc18_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1216:
                                                                                                                                                                                                                                                                     if(_loc19_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1226:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc18_ && this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc4_ = §§pop();
                                                                                                                                                                                                                                                                           loop69:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§+$§[_loc2_] = (_loc3_ - _loc7_) * this.§?!A§.x + (_loc4_ - _loc8_) * this.§?!A§.y - param1.radius;
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§,!T§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                 continue loop69;
                                                                                                                                                                                                                                                                                 addr1058:
                                                                                                                                                                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc2_++;
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§,!T§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1051:
                                                                                                                                                                                                                                                                                          while(_loc19_ || _loc2_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr1058);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop69;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                                                                       addr1067:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1256:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                                                                                                                        continue loop54;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1226);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1254:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               addr1255:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1256);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1067);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1263);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr991);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr987);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr983);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr987);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr991);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr936);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr991);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr987);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr965);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr983);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr965);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr987);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr908);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr900);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr956);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr936);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr916);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr933);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr929);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr991);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr821);
                                                                                                                                             }
                                                                                                                                             §§goto(addr814);
                                                                                                                                          }
                                                                                                                                          §§goto(addr795);
                                                                                                                                       }
                                                                                                                                       §§goto(addr760);
                                                                                                                                    }
                                                                                                                                    §§goto(addr821);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr792);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                                  addr232:
                                                                                                               }
                                                                                                               §§goto(addr233);
                                                                                                            }
                                                                                                            §§goto(addr224);
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                         }
                                                                                                         §§goto(addr224);
                                                                                                      }
                                                                                                      §§goto(addr232);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr233);
                                                                                             }
                                                                                             §§goto(addr198);
                                                                                          }
                                                                                          §§goto(addr233);
                                                                                       }
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr220);
                                                                           }
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                     §§goto(addr162);
                                                                  }
                                                                  §§goto(addr138);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr233);
                                             case 1:
                                                §§goto(addr701);
                                             case 2:
                                                _loc5_ = param1.§"R§.m_xf.R;
                                                _loc6_ = param1.§]q§;
                                                §§push(param1.§+,§.m_xf);
                                                if(!(_loc18_ && _loc3_))
                                                {
                                                   §§push(this.§?!A§);
                                                   if(!(_loc18_ && _loc2_))
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_)
                                                               {
                                                                  addr1305:
                                                                  §§push(_loc5_.col2);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    addr1339:
                                                                                    §§push(this.§?!A§);
                                                                                    §§push(_loc5_.col1.y);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(_loc6_.x);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc19_ || _loc3_)
                                                                                          {
                                                                                             addr1356:
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                addr1367:
                                                                                                §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                             }
                                                                                             §§goto(addr1367);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1367);
                                                                                    }
                                                                                 }
                                                                                 addr1369:
                                                                                 _loc5_ = param1.§"R§.m_xf.R;
                                                                                 _loc6_ = param1.localPoint;
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(param1.§"R§);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       §§push(§§pop().m_xf);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           addr1440:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc18_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1456:
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1461:
                                                                                                                                    §§push(param1.§"R§.m_xf);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1465:
                                                                                                                                       §§push(§§pop().position.y);
                                                                                                                                       if(_loc19_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr1475:
                                                                                                                                          §§push(_loc5_.col1.y);
                                                                                                                                          if(_loc19_ || this)
                                                                                                                                          {
                                                                                                                                             addr1483:
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1487:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr1490:
                                                                                                                                                   §§push(_loc5_.col2.y);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1498:
                                                                                                                                                      §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1498);
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   addr1508:
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   _loc5_ = param1.§+,§.m_xf.R;
                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            addr1533:
                                                                                                                                                            loop95:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                               addr1748:
                                                                                                                                                               while(§§pop() < param1.§9">§)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = param1.§?!%§[_loc2_].localPoint;
                                                                                                                                                                  if(!(_loc18_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§+,§);
                                                                                                                                                                     loop76:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().m_xf);
                                                                                                                                                                        addr1726:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().position);
                                                                                                                                                                           addr1727:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                    addr1733:
                                                                                                                                                                                    addr1629:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                                                                       addr1735:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr1736:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                                                                             addr1738:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr1739:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                                                                   addr1741:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      addr1742:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr1743:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                                                                    if(!(_loc19_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                          if(_loc19_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_.col2);
                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1700:
                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1706:
                                                                                                                                                                                                                           if(_loc19_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1721:
                                                                                                                                                                                                                                 _loc4_ = Number(§§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§+$§[_loc2_] = (_loc3_ - _loc7_) * this.§?!A§.x + (_loc4_ - _loc8_) * this.§?!A§.y - param1.radius;
                                                                                                                                                                                                                                    loop92:
                                                                                                                                                                                                                                    for(; !(_loc18_ && this); while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc2_++;
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop92;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop76;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop95;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1560);
                                                                                                                                                                                                                                    },continue loop95)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§,!T§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                                                          continue loop92;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1744:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr1744:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                                                                              continue loop76;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1721);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1743);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr1741);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1743);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1700);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1738);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1733);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1738);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1700);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1735);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1739);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1742);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1700);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1736);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1700);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1744);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1568);
                                                                                                                                                                  continue loop95;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§?!A§);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§?!A§);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1787:
                                                                                                                                                                                    addr1782:
                                                                                                                                                                                    addr1780:
                                                                                                                                                                                    addr1778:
                                                                                                                                                                                    §§push(this.§?!A§);
                                                                                                                                                                                    §§push(this.§?!A§.y);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(-1);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    addr1788:
                                                                                                                                                                                    break loop96;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1788);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1787);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1787);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1782);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1780);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1778);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1787);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1748);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1533);
                                                                                                                                                   addr1507:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1508);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1498);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1490);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1508);
                                                                                                                           }
                                                                                                                           §§goto(addr1507);
                                                                                                                        }
                                                                                                                        §§goto(addr1483);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1498);
                                                                                                               }
                                                                                                               §§goto(addr1487);
                                                                                                            }
                                                                                                            §§goto(addr1490);
                                                                                                         }
                                                                                                         §§goto(addr1483);
                                                                                                      }
                                                                                                      §§goto(addr1498);
                                                                                                   }
                                                                                                   §§goto(addr1440);
                                                                                                }
                                                                                                §§goto(addr1475);
                                                                                             }
                                                                                             §§goto(addr1456);
                                                                                          }
                                                                                          §§goto(addr1465);
                                                                                       }
                                                                                       §§goto(addr1508);
                                                                                    }
                                                                                    §§goto(addr1461);
                                                                                 }
                                                                                 §§goto(addr1508);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              §§goto(addr1369);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1367);
                                                                  }
                                                               }
                                                               §§goto(addr1356);
                                                            }
                                                            §§goto(addr1367);
                                                         }
                                                         §§goto(addr1305);
                                                      }
                                                   }
                                                   §§goto(addr1339);
                                                }
                                                §§goto(addr1369);
                                          }
                                          return;
                                          addr1895:
                                       }
                                    }
                                    else
                                    {
                                       addr1872:
                                       §§push(2);
                                       if(_loc19_ || _loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr1895);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§9!&§);
                                    if(!(_loc18_ && _loc2_))
                                    {
                                       addr1871:
                                       if(§§pop() === _loc17_)
                                       {
                                          §§goto(addr1872);
                                       }
                                       else
                                       {
                                          §§goto(addr1895);
                                          §§push(3);
                                       }
                                       §§goto(addr1895);
                                    }
                                 }
                              }
                              §§goto(addr1871);
                           }
                           §§goto(addr1895);
                        }
                        §§goto(addr1852);
                     }
                     else
                     {
                        §§push(b2Manifold.§%p§);
                        if(!(_loc18_ && param1))
                        {
                           §§goto(addr1841);
                        }
                        §§goto(addr1871);
                     }
                  }
               }
               §§goto(addr1871);
            }
            §§goto(addr1823);
         }
         §§goto(addr1896);
      }
   }
}
