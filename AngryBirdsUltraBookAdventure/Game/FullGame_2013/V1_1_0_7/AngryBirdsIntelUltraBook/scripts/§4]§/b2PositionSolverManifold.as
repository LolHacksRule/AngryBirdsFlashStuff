package §4]§
{
   import §#I§.*;
   import §&H§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §&k§:b2Vec2;
      
      private static var §4!2§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&k§ = new b2Vec2();
            do
            {
               §4!2§ = new b2Vec2();
            }
            while(_loc1_);
            
         }
      }
      
      public var §6!P§:b2Vec2;
      
      public var § !C§:Vector.<b2Vec2>;
      
      public var §`=§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§6!P§ = new b2Vec2();
               loop1:
               while(true)
               {
                  addr33:
                  while(true)
                  {
                     this.§`=§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr33);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_ && this)
               {
                  continue;
               }
               if(!(_loc2_ && this))
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
      
      public function §`!D§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
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
            b2Settings.b2Assert(param1.§%!3§ > 0);
         }
         §§push(param1.type);
         if(_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!(_loc18_ && param1))
            {
               §§push(b2Manifold.§+!,§);
               if(!_loc18_)
               {
                  §§push(_loc17_);
                  if(!_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc19_ || _loc2_)
                        {
                           §§push(0);
                           if(_loc19_)
                           {
                              addr1786:
                           }
                           else
                           {
                              addr1825:
                           }
                        }
                        else
                        {
                           addr1837:
                           §§push(2);
                           if(_loc18_)
                           {
                           }
                        }
                        addr1846:
                        loop94:
                        switch(§§pop())
                        {
                           case 0:
                              _loc5_ = param1.§19§.m_xf.R;
                              _loc6_ = param1.localPoint;
                              if(!_loc18_)
                              {
                                 §§push(param1.§19§);
                                 if(!_loc18_)
                                 {
                                    §§push(§§pop().m_xf);
                                    if(_loc19_)
                                    {
                                       §§push(§§pop().position);
                                       if(_loc19_ || this)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc19_)
                                          {
                                             §§push(_loc5_.col1);
                                             if(!(_loc18_ && _loc3_))
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
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc19_ || param1)
                                                                           {
                                                                              addr136:
                                                                              _loc9_ = §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 addr141:
                                                                                 §§push(param1.§19§.m_xf);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr145:
                                                                                    addr144:
                                                                                    §§push(§§pop().position.y);
                                                                                    if(_loc19_)
                                                                                    {
                                                                                       addr150:
                                                                                       §§push(_loc5_.col1.y);
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          addr153:
                                                                                          §§push(_loc6_.x);
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             addr157:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc19_ || _loc2_)
                                                                                             {
                                                                                                addr167:
                                                                                                §§push(_loc5_.col2.y);
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   addr178:
                                                                                                   §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                   if(_loc19_ || _loc2_)
                                                                                                   {
                                                                                                      addr187:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr178);
                                                                                    }
                                                                                    _loc10_ = §§pop();
                                                                                    addr189:
                                                                                    §§push(param1.§"@§.m_xf);
                                                                                 }
                                                                                 _loc5_ = §§pop().R;
                                                                                 _loc6_ = param1.§+"§[0].localPoint;
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(param1.§"@§);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().m_xf);
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr634:
                                                                                             addr560:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                addr636:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr637:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      addr639:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr640:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            addr642:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr643:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  addr645:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr646:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr647:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr648:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr649:
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
                                                                                             §§push(§§pop().position);
                                                                                             if(_loc18_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(!(_loc18_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_.col2);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc19_ || param1)
                                                                                                                  {
                                                                                                                     while(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           addr610:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(!(_loc18_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop19:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop21:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          loop23:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop25:
                                                                                                                                                      while(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop26:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            loop27:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               loop28:
                                                                                                                                                               for(; _loc19_; if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop23;
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  if(_loc18_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  loop29:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     continue loop26;
                                                                                                                                                                     addr457:
                                                                                                                                                                     if(!(_loc19_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc19_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc19_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr491:
                                                                                                                                                                              if(§§pop() > Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                                                    addr496:
                                                                                                                                                                                    addr525:
                                                                                                                                                                                    while(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                          while(_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§6!P§);
                                                                                                                                                                                             loop35:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                addr357:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   addr358:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      addr359:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr360:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§6!P§);
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc19_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop28;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr441:
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr457);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr491);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                          addr526:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       §§goto(addr526);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr492:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr310);
                                                                                                                                                                              §§push(this.§6!P§);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr496);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr637);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr640);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop25;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr648);
                                                                                                                                                      addr396:
                                                                                                                                                      if(_loc18_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop19;
                                                                                                                                                         }
                                                                                                                                                         addr436:
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr441);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr496);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr647);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr441);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue loop21;
                                                                                                                                             if(!(_loc19_ || param1))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                continue loop15;
                                                                                                                                             }
                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                §§goto(addr396);
                                                                                                                                             }
                                                                                                                                             §§goto(addr634);
                                                                                                                                          }
                                                                                                                                          §§goto(addr649);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr643);
                                                                                                                           addr610:
                                                                                                                        }
                                                                                                                        §§goto(addr645);
                                                                                                                     }
                                                                                                                     §§goto(addr646);
                                                                                                                     addr598:
                                                                                                                  }
                                                                                                                  §§goto(addr610);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr598);
                                                                                                      if(_loc18_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc14_);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc19_ || this)
                                                                                                         {
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                         §§goto(addr457);
                                                                                                      }
                                                                                                      §§goto(addr610);
                                                                                                   }
                                                                                                   §§goto(addr639);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr636);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr656:
                                                                                          _loc5_ = §§pop().R;
                                                                                          _loc6_ = param1.§8!9§;
                                                                                          if(!(_loc18_ && _loc2_))
                                                                                          {
                                                                                             §§push(this.§6!P§);
                                                                                             if(!(_loc18_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(!(_loc18_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc19_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            if(_loc19_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc19_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr740:
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr747:
                                                                                                                              §§push(this.§6!P§);
                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                              if(_loc19_ || this)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(_loc19_ || param1)
                                                                                                                                 {
                                                                                                                                    addr781:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       addr772:
                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          addr777:
                                                                                                                                          §§push(§§pop() * _loc6_.y);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    _loc5_ = param1.§19§.m_xf.R;
                                                                                                                                    _loc6_ = param1.localPoint;
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§19§);
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().m_xf);
                                                                                                                                          if(_loc19_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().position);
                                                                                                                                             if(_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_.col1);
                                                                                                                                                   if(!(_loc18_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!(_loc18_ && this))
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
                                                                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc19_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    if(_loc19_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr904:
                                                                                                                                                                                       §§push(param1.§19§.m_xf);
                                                                                                                                                                                       if(_loc19_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr923:
                                                                                                                                                                                          §§push(§§pop().position.y);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                          addr966:
                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                          addr970:
                                                                                                                                                                                          _loc5_ = param1.§"@§.m_xf.R;
                                                                                                                                                                                          if(_loc19_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             if(!(_loc18_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr991:
                                                                                                                                                                                                   loop72:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                      addr1195:
                                                                                                                                                                                                      while(§§pop() < param1.§%!3§)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc6_ = param1.§+"§[_loc2_].localPoint;
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(param1.§"@§);
                                                                                                                                                                                                            loop53:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().m_xf);
                                                                                                                                                                                                               addr1164:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop().position);
                                                                                                                                                                                                                  addr1165:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc5_.col1);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                                                                           addr1176:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                                                                                                                    addr1183:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                                                                             addr1188:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1186:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1189:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          addr1190:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             addr1191:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                addr1192:
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
                                                                                                                                                                                                                                 addr1181:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1186);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1175:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1191);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1160);
                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop94;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1195);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr991);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr970);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr928:
                                                                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr931:
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr950:
                                                                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr961:
                                                                                                                                                                                          §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr961);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr961);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr966);
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr966);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr931);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr961);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr950);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr961);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr931);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr928);
                                                                                                                                                }
                                                                                                                                                §§goto(addr966);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr923);
                                                                                                                                       }
                                                                                                                                       §§goto(addr904);
                                                                                                                                    }
                                                                                                                                    §§goto(addr923);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr781);
                                                                                                                        }
                                                                                                                        §§goto(addr772);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr777);
                                                                                                            }
                                                                                                            §§goto(addr772);
                                                                                                         }
                                                                                                         §§goto(addr740);
                                                                                                      }
                                                                                                      §§goto(addr777);
                                                                                                   }
                                                                                                   §§goto(addr772);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr747);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr492);
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                           §§goto(addr187);
                                                                        }
                                                                        §§goto(addr136);
                                                                     }
                                                                     §§goto(addr153);
                                                                  }
                                                                  §§goto(addr157);
                                                               }
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr167);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr157);
                                                }
                                                §§goto(addr153);
                                             }
                                             §§goto(addr150);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr144);
                                 }
                              }
                              §§goto(addr141);
                           case 1:
                              §§goto(addr656);
                           case 2:
                              _loc5_ = param1.§"@§.m_xf.R;
                              _loc6_ = param1.§8!9§;
                              §§push(param1.§19§.m_xf);
                              if(!(_loc18_ && param1))
                              {
                                 §§push(this.§6!P§);
                                 if(!_loc18_)
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
                                             if(!_loc18_)
                                             {
                                                addr1235:
                                                §§push(_loc5_.col2);
                                                if(!_loc18_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc19_)
                                                   {
                                                      §§push(_loc6_.y);
                                                      if(_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc18_)
                                                         {
                                                            addr1249:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc19_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(_loc19_ || _loc2_)
                                                               {
                                                                  addr1264:
                                                                  §§push(this.§6!P§);
                                                                  §§push(_loc5_.col1.y);
                                                                  if(!(_loc18_ && _loc3_))
                                                                  {
                                                                     addr1272:
                                                                     §§push(_loc6_.x);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_ || this)
                                                                        {
                                                                           addr1291:
                                                                           §§push(_loc5_.col2.y);
                                                                           if(_loc19_)
                                                                           {
                                                                              addr1298:
                                                                              §§pop().y = §§pop() + §§pop() * _loc6_.y;
                                                                              addr1297:
                                                                           }
                                                                           §§goto(addr1297);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1298);
                                                               }
                                                               _loc5_ = param1.§"@§.m_xf.R;
                                                               _loc6_ = param1.localPoint;
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(param1.§"@§);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop().m_xf);
                                                                     if(!(_loc18_ && this))
                                                                     {
                                                                        §§push(§§pop().position);
                                                                        if(!(_loc18_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!(_loc18_ && _loc2_))
                                                                           {
                                                                              §§push(_loc5_.col1);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc19_ || param1)
                                                                                 {
                                                                                    §§push(_loc6_.x);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc19_)
                                                                                       {
                                                                                          §§push(_loc5_.col2);
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(_loc6_.y);
                                                                                                if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      addr1377:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               _loc7_ = §§pop();
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  addr1396:
                                                                                                                  §§push(param1.§"@§.m_xf);
                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr1405:
                                                                                                                     §§push(§§pop().position.y);
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr1413:
                                                                                                                        §§push(_loc5_.col1.y);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(_loc19_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr1444:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 addr1430:
                                                                                                                                 §§push(_loc5_.col2.y);
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1442:
                                                                                                                                    §§push(§§pop() * _loc6_.y);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!(_loc18_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr1453:
                                                                                                                                 _loc8_ = Number(§§pop());
                                                                                                                                 _loc5_ = param1.§19§.m_xf.R;
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc19_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       if(!(_loc18_ && param1))
                                                                                                                                       {
                                                                                                                                          addr1478:
                                                                                                                                          loop93:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc2_);
                                                                                                                                             addr1698:
                                                                                                                                             while(§§pop() < param1.§%!3§)
                                                                                                                                             {
                                                                                                                                                _loc6_ = param1.§+"§[_loc2_].localPoint;
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§19§);
                                                                                                                                                   loop74:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                      addr1669:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                         addr1670:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            addr1671:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                               addr1673:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1689:
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(_loc19_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.col2);
                                                                                                                                                                           addr1688:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1686:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.y);
                                                                                                                                                                        addr1691:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr1692:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr1689:
                                                                                                                                                                  }
                                                                                                                                                                  addr1693:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                     addr1694:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        addr1695:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc3_ = §§pop();
                                                                                                                                                                           continue loop74;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1513);
                                                                                                                                                continue loop93;
                                                                                                                                             }
                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(this.§6!P§);
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§6!P§);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-1);
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc19_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1735:
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  addr1747:
                                                                                                                                                                  addr1745:
                                                                                                                                                                  addr1743:
                                                                                                                                                                  §§push(this.§6!P§);
                                                                                                                                                                  §§push(this.§6!P§.y);
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     addr1750:
                                                                                                                                                                     §§push(§§pop() * -1);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  addr1753:
                                                                                                                                                                  break loop94;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1753);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1750);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1735);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1747);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1745);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1747);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1743);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1698);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1478);
                                                                                                                                 addr1452:
                                                                                                                              }
                                                                                                                              §§goto(addr1453);
                                                                                                                           }
                                                                                                                           §§goto(addr1444);
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr1444);
                                                                                                                     }
                                                                                                                     §§goto(addr1452);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1453);
                                                                                                         }
                                                                                                         §§goto(addr1413);
                                                                                                      }
                                                                                                      §§goto(addr1430);
                                                                                                   }
                                                                                                   §§goto(addr1444);
                                                                                                }
                                                                                                §§goto(addr1442);
                                                                                             }
                                                                                             §§goto(addr1377);
                                                                                          }
                                                                                          §§goto(addr1430);
                                                                                       }
                                                                                       §§goto(addr1444);
                                                                                    }
                                                                                    §§goto(addr1377);
                                                                                 }
                                                                                 §§goto(addr1444);
                                                                              }
                                                                              §§goto(addr1413);
                                                                           }
                                                                           §§goto(addr1453);
                                                                        }
                                                                        §§goto(addr1405);
                                                                     }
                                                                     §§goto(addr1453);
                                                                  }
                                                               }
                                                               §§goto(addr1396);
                                                            }
                                                            §§goto(addr1272);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1298);
                                                }
                                                §§goto(addr1291);
                                             }
                                             §§goto(addr1298);
                                          }
                                          §§goto(addr1249);
                                       }
                                       §§goto(addr1235);
                                    }
                                 }
                              }
                              §§goto(addr1264);
                        }
                        return;
                        addr1845:
                     }
                     else
                     {
                        §§push(b2Manifold.§-!-§);
                        if(!(_loc18_ && param1))
                        {
                           §§push(_loc17_);
                           if(_loc19_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc18_ && this))
                                 {
                                    §§push(1);
                                    if(!(_loc18_ && this))
                                    {
                                       §§goto(addr1825);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1837);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§3!J§);
                                 if(!(_loc18_ && this))
                                 {
                                    addr1836:
                                    if(§§pop() === _loc17_)
                                    {
                                       §§goto(addr1837);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                              §§goto(addr1845);
                           }
                           §§goto(addr1836);
                        }
                     }
                     §§goto(addr1825);
                  }
                  §§goto(addr1836);
               }
               §§goto(addr1786);
            }
            §§goto(addr1837);
         }
         §§goto(addr1846);
      }
   }
}
