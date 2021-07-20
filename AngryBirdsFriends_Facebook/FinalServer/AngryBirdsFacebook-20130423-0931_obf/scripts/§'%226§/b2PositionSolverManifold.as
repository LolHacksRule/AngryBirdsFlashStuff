package §'"6§
{
   import §'"-§.*;
   import §,"[§.*;
   import §6!^§.*;
   import §6"1§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §!0§:b2Vec2;
      
      private static var §""T§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2PositionSolverManifold)
         {
            §!0§ = new b2Vec2();
         }
         do
         {
            §""T§ = new b2Vec2();
         }
         while(!_loc1_);
         
      }
      
      public var §0"#§:b2Vec2;
      
      public var §4!_§:Vector.<b2Vec2>;
      
      public var § !'§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§0"#§ = new b2Vec2();
               while(true)
               {
                  addr56:
                  while(true)
                  {
                     this.§ !'§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     do
                     {
                        this.§4!_§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     }
                     while(!_loc2_);
                     
                     if(_loc3_ && _loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr56);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§4!_§[_loc1_] = new b2Vec2();
               while(true)
               {
                  _loc1_++;
               }
               addr116:
            }
            while(_loc3_)
            {
               §§goto(addr116);
            }
         }
      }
      
      public function §6!Q§(param1:b2ContactConstraint) : void
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
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(_loc19_)
         {
            b2Settings.b2Assert(param1.§=!7§ > 0);
         }
         §§push(param1.type);
         if(!_loc18_)
         {
            var _loc17_:* = §§pop();
            if(!_loc18_)
            {
               §§push(b2Manifold.§>E§);
               if(_loc19_)
               {
                  §§push(_loc17_);
                  if(!(_loc18_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc18_ && _loc3_))
                        {
                           §§push(0);
                           if(!(_loc19_ || param1))
                           {
                              addr1820:
                           }
                        }
                        else
                        {
                           addr1802:
                           §§push(1);
                           if(!(_loc18_ && this))
                           {
                              addr1810:
                           }
                        }
                        addr1826:
                        loop91:
                        switch(§§pop())
                        {
                           case 0:
                              _loc5_ = param1.§`y§.m_xf.R;
                              _loc6_ = param1.localPoint;
                              if(!(_loc18_ && _loc2_))
                              {
                                 §§push(param1.§`y§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop().m_xf);
                                    if(_loc19_ || _loc2_)
                                    {
                                       §§push(§§pop().position);
                                       if(_loc19_ || this)
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
                                                   if(_loc19_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         addr113:
                                                         §§push(_loc5_.col2);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc19_ || param1)
                                                            {
                                                               addr125:
                                                               §§push(_loc6_.y);
                                                               if(_loc19_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc19_ || _loc2_)
                                                                           {
                                                                              _loc9_ = §§pop();
                                                                              if(_loc19_)
                                                                              {
                                                                                 addr166:
                                                                                 §§push(param1.§`y§.m_xf);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr170:
                                                                                    §§push(§§pop().position.y);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr173:
                                                                                       §§push(_loc5_.col1.y);
                                                                                       if(_loc19_ || _loc3_)
                                                                                       {
                                                                                          addr183:
                                                                                          §§push(_loc6_.x);
                                                                                          if(_loc19_ || this)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr197:
                                                                                                §§push(_loc5_.col2.y);
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   addr208:
                                                                                                   §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                   {
                                                                                                      addr217:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    §§goto(addr217);
                                                                                 }
                                                                                 addr222:
                                                                                 _loc5_ = §§pop().R;
                                                                                 _loc6_ = param1.§]!@§[0].localPoint;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(param1.§8!7§);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().m_xf);
                                                                                       addr641:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          addr642:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!(_loc18_ && this))
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   loop4:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            addr660:
                                                                                                            addr600:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     addr665:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr663:
                                                                                                               }
                                                                                                               addr666:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr667:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr668:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr669:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop14:
                                                                                                            for(; !(_loc18_ && _loc3_); if(_loc18_ && _loc2_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            },_loc15_ = §§pop(),if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               §§goto(addr499);
                                                                                                            },§§goto(addr513))
                                                                                                            {
                                                                                                               §§push(_loc6_.x);
                                                                                                               if(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        loop16:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.y);
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr631:
                                                                                                                                 loop19:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop20:
                                                                                                                                    while(!_loc18_)
                                                                                                                                    {
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       loop21:
                                                                                                                                       for(; _loc19_; if(_loc19_ || this)
                                                                                                                                       {
                                                                                                                                          if(false)
                                                                                                                                          {
                                                                                                                                             §§goto(addr286);
                                                                                                                                          }
                                                                                                                                          break loop91;
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc11_);
                                                                                                                                             loop23:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_);
                                                                                                                                                addr534:
                                                                                                                                                while(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr545:
                                                                                                                                                      while(_loc19_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         _loc13_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc12_);
                                                                                                                                                            addr517:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc10_);
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr471:
                                                                                                                                                §§goto(addr667);
                                                                                                                                                if(!(_loc19_ || this))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   addr506:
                                                                                                                                                   addr506:
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      loop49:
                                                                                                                                                      while(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr509:
                                                                                                                                                         §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc16_ = §§pop();
                                                                                                                                                            loop34:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§0"#§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     loop37:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           loop39:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§0"#§);
                                                                                                                                                                              loop40:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    if(_loc18_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr391:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                    loop42:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop43:
                                                                                                                                                                                       do
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§4!_§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc19_ || _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr286:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§4!_§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                   do
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§ !'§[0] = _loc13_ * this.§0"#§.x + _loc14_ * this.§0"#§.y - param1.radius;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(!(_loc19_ || param1));
                                                                                                                                                                                                   
                                                                                                                                                                                                   if(_loc18_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc18_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop49;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr351:
                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop47:
                                                                                                                                                                                             while(!(_loc18_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§0"#§);
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = 1;
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop39;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc19_ || _loc3_);
                                                                                                                                                                                       
                                                                                                                                                                                       loop32:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc13_);
                                                                                                                                                                                          if(_loc19_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop19;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr430:
                                                                                                                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                            if(_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr442:
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop16;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr534);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr506);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr668);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr527:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr544);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr469:
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr471);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr526:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr527);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr442);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr545);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr430);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr509);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr553);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr366);
                                                                                                                                                   §§push(this.§0"#§);
                                                                                                                                                }
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr506);
                                                                                                                                                   §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                }
                                                                                                                                                §§goto(addr517);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr669);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr665);
                                                                                                                     }
                                                                                                                     §§goto(addr660);
                                                                                                                  }
                                                                                                                  §§goto(addr666);
                                                                                                               }
                                                                                                               §§goto(addr629);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr663);
                                                                                                   }
                                                                                                   addr590:
                                                                                                   §§push(_loc5_.col1);
                                                                                                   if(_loc18_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr600);
                                                                                                   §§push(§§pop().y);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr668);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr637);
                                                                              }
                                                                              addr219:
                                                                              §§goto(addr222);
                                                                              §§push(param1.§8!7§.m_xf);
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           §§goto(addr219);
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                   §§goto(addr125);
                                                }
                                                §§goto(addr113);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr222);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr219);
                           case 1:
                              §§goto(addr676);
                           case 2:
                              _loc5_ = param1.§8!7§.m_xf.R;
                              _loc6_ = param1.§^P§;
                              §§push(param1.§`y§.m_xf);
                              if(!(_loc18_ && param1))
                              {
                                 §§push(this.§0"#§);
                                 if(_loc19_)
                                 {
                                    §§push(_loc5_.col1);
                                    if(_loc19_ || _loc3_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc18_)
                                       {
                                          §§push(_loc6_.x);
                                          if(!_loc18_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && this))
                                             {
                                                §§push(_loc5_.col2);
                                                if(_loc19_ || _loc3_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc19_)
                                                   {
                                                      addr1247:
                                                      §§push(_loc6_.y);
                                                      if(!(_loc18_ && param1))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc19_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc19_ || this)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(_loc19_)
                                                               {
                                                                  addr1274:
                                                                  addr1272:
                                                                  addr1270:
                                                                  §§push(this.§0"#§);
                                                                  §§push(_loc5_.col1.y);
                                                                  if(_loc19_ || _loc3_)
                                                                  {
                                                                     addr1282:
                                                                     §§push(_loc6_.x);
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           addr1289:
                                                                           §§push(_loc5_.col2.y);
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              addr1299:
                                                                              §§push(§§pop() * _loc6_.y);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr1299);
                                                                  }
                                                                  §§pop().y = §§pop();
                                                               }
                                                               _loc5_ = param1.§8!7§.m_xf.R;
                                                               _loc6_ = param1.localPoint;
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(param1.§8!7§);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop().m_xf);
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              §§push(_loc5_.col1);
                                                                              if(!(_loc18_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc19_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc6_.x);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(_loc5_.col2);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc19_ || _loc3_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(!(_loc18_ && param1))
                                                                                                               {
                                                                                                                  addr1401:
                                                                                                                  §§push(param1.§8!7§.m_xf);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr1405:
                                                                                                                     §§push(§§pop().position.y);
                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr1413:
                                                                                                                        §§push(_loc5_.col1.y);
                                                                                                                        if(_loc19_ || param1)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr1444:
                                                                                                                                 §§push(_loc5_.col2.y);
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1440:
                                                                                                                                    §§push(§§pop() * _loc6_.y);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    addr1448:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    §§push(param1.§`y§.m_xf);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1448);
                                                                                                                              }
                                                                                                                              §§goto(addr1444);
                                                                                                                           }
                                                                                                                           §§goto(addr1440);
                                                                                                                        }
                                                                                                                        §§goto(addr1444);
                                                                                                                     }
                                                                                                                     §§goto(addr1448);
                                                                                                                  }
                                                                                                                  _loc5_ = §§pop().R;
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           loop71:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr1678:
                                                                                                                              loop72:
                                                                                                                              for(; §§pop() < param1.§=!7§; continue loop71)
                                                                                                                              {
                                                                                                                                 _loc6_ = param1.§]!@§[_loc2_].localPoint;
                                                                                                                                 if(_loc19_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§`y§);
                                                                                                                                    loop73:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().m_xf);
                                                                                                                                       addr1640:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().position);
                                                                                                                                          addr1641:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             if(_loc19_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_.col1);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr1664:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_.col2);
                                                                                                                                                            addr1666:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.y);
                                                                                                                                                                     addr1671:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr1669:
                                                                                                                                                               }
                                                                                                                                                               addr1672:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  addr1673:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr1674:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr1675:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                           continue loop73;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr1664:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1669);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1664);
                                                                                                                                                   addr1551:
                                                                                                                                                   §§push(_loc5_.col1);
                                                                                                                                                   if(!(_loc19_ || this))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!(_loc18_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc18_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.col2);
                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr1606:
                                                                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1618:
                                                                                                                                                                              §§push(§§pop() + (§§pop() + §§pop() * §§pop()));
                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc18_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                 loop86:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§ !'§[_loc2_] = (_loc3_ - _loc7_) * this.§0"#§.x + (_loc4_ - _loc8_) * this.§0"#§.y - param1.radius;
                                                                                                                                                                                    loop87:
                                                                                                                                                                                    while(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop88:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§4!_§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc2_++;
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break loop88;
                                                                                                                                                                                                   addr1491:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(false)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop88;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop72;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop87;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop86;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop73;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1671);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1675);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1672);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1618);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1666);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1673);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1618);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1606);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr1664);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1618);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1675);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr1491);
                                                                                                                              }
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0"#§);
                                                                                                                                 if(_loc19_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§0"#§);
                                                                                                                                    if(_loc19_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§push(-1);
                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr1732:
                                                                                                                                                   addr1727:
                                                                                                                                                   addr1725:
                                                                                                                                                   addr1723:
                                                                                                                                                   §§push(this.§0"#§);
                                                                                                                                                   §§push(this.§0"#§.y);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(-1);
                                                                                                                                                   }
                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                   addr1733:
                                                                                                                                                   break loop91;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1733);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1732);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr1732);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1727);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1725);
                                                                                                                              }
                                                                                                                              §§goto(addr1732);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1723);
                                                                                                                     }
                                                                                                                     §§goto(addr1678);
                                                                                                                  }
                                                                                                                  §§goto(addr1732);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1448);
                                                                                                         }
                                                                                                         §§goto(addr1413);
                                                                                                      }
                                                                                                      §§goto(addr1444);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1440);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1444);
                                                                                    }
                                                                                    §§goto(addr1440);
                                                                                 }
                                                                                 §§goto(addr1444);
                                                                              }
                                                                           }
                                                                           §§goto(addr1413);
                                                                        }
                                                                     }
                                                                     §§goto(addr1405);
                                                                  }
                                                                  §§goto(addr1401);
                                                               }
                                                               §§goto(addr1448);
                                                            }
                                                            §§goto(addr1289);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1299);
                                                }
                                                §§goto(addr1289);
                                             }
                                             §§goto(addr1282);
                                          }
                                          §§goto(addr1247);
                                       }
                                       §§goto(addr1282);
                                    }
                                    §§goto(addr1274);
                                 }
                                 §§goto(addr1272);
                              }
                              §§goto(addr1270);
                        }
                        return;
                        addr1825:
                     }
                     else
                     {
                        §§push(b2Manifold.§[!7§);
                        if(!(_loc18_ && param1))
                        {
                           §§push(_loc17_);
                           if(!_loc18_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc18_ && this))
                                 {
                                    §§goto(addr1802);
                                 }
                                 else
                                 {
                                    addr1817:
                                    §§push(2);
                                    if(_loc19_)
                                    {
                                       §§goto(addr1820);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§?!Q§);
                                 if(_loc19_)
                                 {
                                    addr1816:
                                    if(§§pop() === _loc17_)
                                    {
                                       §§goto(addr1817);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr1825);
                           }
                           §§goto(addr1816);
                        }
                     }
                     §§goto(addr1810);
                  }
               }
               §§goto(addr1816);
            }
            §§goto(addr1802);
         }
         §§goto(addr1826);
      }
   }
}
