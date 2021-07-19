package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §`a§:b2Vec2;
      
      private static var §=V§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`a§ = new b2Vec2();
            do
            {
               §=V§ = new b2Vec2();
            }
            while(!_loc1_);
            
         }
      }
      
      public var §7w§:b2Vec2;
      
      public var §="8§:Vector.<b2Vec2>;
      
      public var §0#K§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§7w§ = new b2Vec2();
               while(true)
               {
                  addr62:
                  while(true)
                  {
                     this.§0#K§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     do
                     {
                        this.§="8§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     }
                     while(!(_loc3_ || this));
                     
                     if(_loc2_)
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
            §§goto(addr62);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§="8§[_loc1_] = new b2Vec2();
               while(true)
               {
                  _loc1_++;
               }
               addr122:
            }
            while(!_loc3_)
            {
               §§goto(addr122);
            }
         }
      }
      
      public function §8#5§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:b2Mat22 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(_loc18_)
         {
            b2Settings.b2Assert(param1.§6!c§ > 0);
         }
         §§push(param1.type);
         if(!_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!(_loc19_ && _loc2_))
            {
               §§push(b2Manifold.§1!9§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(!(_loc19_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc18_)
                        {
                           addr1777:
                           §§push(0);
                           if(!_loc19_)
                           {
                              addr1835:
                              loop94:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§9"P§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(_loc18_)
                                    {
                                       §§push(param1.§9"P§);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop().m_xf);
                                          if(_loc18_ || this)
                                          {
                                             §§push(§§pop().position);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc18_ || this)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc19_ && param1))
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(!(_loc19_ && param1))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc19_)
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           addr136:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              addr144:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       addr165:
                                                                                       §§push(param1.§9"P§.m_xf);
                                                                                       if(!(_loc19_ && _loc3_))
                                                                                       {
                                                                                          addr174:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             addr201:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr187:
                                                                                                §§push(_loc6_.x);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_ && param1)
                                                                                                   {
                                                                                                   }
                                                                                                   addr213:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      addr222:
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§continue§.m_xf.R;
                                                                                                      _loc6_ = param1.§9"`§[0].localPoint;
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(param1.§continue§);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            addr661:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               addr662:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr663:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     addr665:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr666:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           addr668:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr669:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 addr671:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr672:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       addr674:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr675:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr676:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr677:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr678:
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
                                                                                                            }
                                                                                                         }
                                                                                                         addr660:
                                                                                                      }
                                                                                                      loop15:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§continue§);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop().position);
                                                                                                                  if(!(_loc19_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop16:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col1);
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().y);
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop18:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().y);
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop20:
                                                                                                                                                   while(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop21:
                                                                                                                                                      while(_loc18_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         loop22:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop23:
                                                                                                                                                            while(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               loop24:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  loop25:
                                                                                                                                                                  for(; !_loc19_; if(!(_loc18_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  },§§push(_loc14_),if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr464);
                                                                                                                                                                  },§§push(§§pop() + §§pop()),if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr495:
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr498:
                                                                                                                                                                           _loc15_ = §§pop();
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr518);
                                                                                                                                                                                 §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr678);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr525);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr518);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr525);
                                                                                                                                                                  },§§goto(addr495))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     loop26:
                                                                                                                                                                     for(; !(_loc19_ && this); if(!(_loc18_ || this))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     },if(!(_loc19_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr443);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr529);
                                                                                                                                                                     },§§goto(addr669))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc10_);
                                                                                                                                                                                       while(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          while(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr411:
                                                                                                                                                                                             if(_loc19_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr518:
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr525:
                                                                                                                                                                                                   §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc16_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§7w§);
                                                                                                                                                                                                         loop36:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                            addr391:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                               addr392:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  addr393:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                     addr394:
                                                                                                                                                                                                                     while(_loc18_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§7w§);
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr525);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr347);
                                                                                                                                                                                             §§push(this.§7w§);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr663);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr544);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc19_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop25;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr666);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop22;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr677);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr675);
                                                                                                                                                   addr637:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr671);
                                                                                                                                    }
                                                                                                                                    §§goto(addr668);
                                                                                                                                 }
                                                                                                                                 §§goto(addr672);
                                                                                                                              }
                                                                                                                              §§goto(addr637);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr665);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr662);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr661);
                                                                                                               }
                                                                                                               §§goto(addr662);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr685:
                                                                                                               _loc5_ = §§pop().R;
                                                                                                               _loc6_ = param1.§6!I§;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(this.§7w§);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr746:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr749:
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr778:
                                                                                                                                                   §§push(this.§7w§);
                                                                                                                                                   §§push(_loc5_.col1.y);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      addr759:
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc19_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr785:
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         _loc5_ = param1.§9"P§.m_xf.R;
                                                                                                                                                         _loc6_ = param1.localPoint;
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§9"P§);
                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().m_xf);
                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().position);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc18_ || _loc3_)
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
                                                                                                                                                                                 if(_loc18_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr855:
                                                                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr877:
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr883:
                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr888:
                                                                                                                                                                                                            §§push(param1.§9"P§.m_xf);
                                                                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr897:
                                                                                                                                                                                                               addr896:
                                                                                                                                                                                                               §§push(§§pop().position.y);
                                                                                                                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr905:
                                                                                                                                                                                                                  §§push(_loc5_.col1.y);
                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr929:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr946:
                                                                                                                                                                                                                           §§push(_loc5_.col2.y);
                                                                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr942:
                                                                                                                                                                                                                              §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr946);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr942);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr946);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                               addr951:
                                                                                                                                                                                                               §§push(param1.§continue§.m_xf);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc5_ = §§pop().R;
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc2_ = §§pop();
                                                                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr975:
                                                                                                                                                                                                                     loop72:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc2_);
                                                                                                                                                                                                                        addr1184:
                                                                                                                                                                                                                        while(§§pop() < param1.§6!c§)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_ = param1.§9"`§[_loc2_].localPoint;
                                                                                                                                                                                                                           if(!(_loc19_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§continue§);
                                                                                                                                                                                                                              loop53:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().m_xf);
                                                                                                                                                                                                                                 addr1160:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().position);
                                                                                                                                                                                                                                    addr1161:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                       addr1162:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_.col1);
                                                                                                                                                                                                                                          addr1164:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             addr1165:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   loop59:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_.col2);
                                                                                                                                                                                                                                                      addr1172:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               addr1129:
                                                                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1139:
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                  continue loop59;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1178:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr1179:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      addr1180:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1181);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param1.§continue§);
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop().m_xf);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().position);
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc5_.col1);
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1115:
                                                                                                                                                                                                                                                                  §§push(_loc5_.col2);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop().y);
                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr1129);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1178);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1139);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1140);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1139);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1165);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1179);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1115);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1164);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1180);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1150);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr1161);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1160);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1161);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1172);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1156);
                                                                                                                                                                                                                           continue loop72;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop94;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1184);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr975);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr951);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr905);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr946);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr929);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr942);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr946);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr877);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr929);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr855);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr905);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr883);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr897);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr896);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr888);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr897);
                                                                                                                                                      }
                                                                                                                                                      addr781:
                                                                                                                                                      §§goto(addr785);
                                                                                                                                                      §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc5_.col2.y);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr781);
                                                                                                                                                }
                                                                                                                                                §§goto(addr785);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr759);
                                                                                                                                    }
                                                                                                                                    §§goto(addr746);
                                                                                                                                 }
                                                                                                                                 §§goto(addr778);
                                                                                                                              }
                                                                                                                              §§goto(addr785);
                                                                                                                           }
                                                                                                                           §§goto(addr746);
                                                                                                                        }
                                                                                                                        §§goto(addr749);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr778);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr660);
                                                                                                         }
                                                                                                         §§goto(addr661);
                                                                                                      }
                                                                                                      break;
                                                                                                      addr221:
                                                                                                   }
                                                                                                   §§goto(addr222);
                                                                                                }
                                                                                                addr212:
                                                                                                §§goto(addr213);
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(!(_loc19_ && _loc3_))
                                                                                             {
                                                                                                addr211:
                                                                                                §§goto(addr212);
                                                                                                §§push(§§pop() * _loc6_.y);
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                          §§goto(addr221);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        §§goto(addr212);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               §§goto(addr201);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr222);
                                       }
                                    }
                                    §§goto(addr165);
                                 case 1:
                                    §§goto(addr685);
                                 case 2:
                                    _loc5_ = param1.§continue§.m_xf.R;
                                    _loc6_ = param1.§6!I§;
                                    §§push(param1.§9"P§.m_xf);
                                    if(!_loc19_)
                                    {
                                       §§push(this.§7w§);
                                       if(_loc18_)
                                       {
                                          §§push(_loc5_.col1);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc19_ && _loc2_))
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc18_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc5_.col2);
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc18_ || _loc2_)
                                                         {
                                                            §§push(_loc6_.y);
                                                            if(_loc18_ || _loc3_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc19_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_ || param1)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!(_loc19_ && this))
                                                                     {
                                                                        addr1278:
                                                                        §§push(this.§7w§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           addr1286:
                                                                           §§push(_loc6_.x);
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              addr1295:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc19_ && param1))
                                                                              {
                                                                                 addr1303:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr1311:
                                                                                    §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                 }
                                                                                 §§goto(addr1311);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              addr1313:
                                                                              _loc5_ = param1.§continue§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param1.§continue§);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc19_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc5_.col1);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc19_ && param1))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc18_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc19_ && this))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 addr1425:
                                                                                                                                 §§push(param1.§continue§.m_xf);
                                                                                                                                 if(!(_loc19_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr1434:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       addr1444:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          addr1452:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!(_loc19_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1466:
                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1472:
                                                                                                                                                   §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1477:
                                                                                                                                                      _loc8_ = Number(§§pop());
                                                                                                                                                      §§push(param1.§9"P§.m_xf);
                                                                                                                                                      addr1476:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1477);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1472);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1476);
                                                                                                                                 }
                                                                                                                                 _loc5_ = §§pop().R;
                                                                                                                                 if(!_loc19_)
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
                                                                                                                                             addr1682:
                                                                                                                                             loop74:
                                                                                                                                             for(; §§pop() < param1.§6!c§; continue loop73)
                                                                                                                                             {
                                                                                                                                                _loc6_ = param1.§9"`§[_loc2_].localPoint;
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§9"P§);
                                                                                                                                                   loop75:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                      addr1656:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                         addr1657:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  addr1663:
                                                                                                                                                                  loop79:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_.col2);
                                                                                                                                                                           addr1670:
                                                                                                                                                                           addr1601:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().x);
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc18_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc5_.col2);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1615:
                                                                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr1627:
                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                       if(_loc19_ && _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop79;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr1679:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§0#K§[_loc2_] = (_loc3_ - _loc7_) * this.§7w§.x + (_loc4_ - _loc8_) * this.§7w§.y - param1.radius;
                                                                                                                                                                                          loop89:
                                                                                                                                                                                          while(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop90:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§="8§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc2_++;
                                                                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop90;
                                                                                                                                                                                                         addr1520:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop90;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop74;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop89;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop75;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          addr1674:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             addr1675:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1678:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1678:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1673:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1679);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1671:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1671:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1673);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1627);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr1670);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1671);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr1662:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1678);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1520);
                                                                                                                                             }
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1687:
                                                                                                                                                §§push(this.§7w§);
                                                                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§7w§);
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(-1);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr1724:
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr1747:
                                                                                                                                                               if(_loc18_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  addr1736:
                                                                                                                                                                  §§push(this.§7w§);
                                                                                                                                                                  §§push(this.§7w§.y);
                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr1745:
                                                                                                                                                                     §§push(§§pop() * -1);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break loop94;
                                                                                                                                                            }
                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                            §§goto(addr1747);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1745);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1724);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1736);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1724);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr1687);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1682);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1736);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1477);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1472);
                                                                                                         }
                                                                                                         §§goto(addr1466);
                                                                                                      }
                                                                                                      §§goto(addr1452);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1472);
                                                                                             }
                                                                                             §§goto(addr1444);
                                                                                          }
                                                                                          §§goto(addr1477);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1434);
                                                                                 }
                                                                                 §§goto(addr1425);
                                                                              }
                                                                              §§goto(addr1477);
                                                                           }
                                                                           §§goto(addr1311);
                                                                        }
                                                                        §§goto(addr1303);
                                                                     }
                                                                     §§goto(addr1313);
                                                                  }
                                                                  §§goto(addr1303);
                                                               }
                                                            }
                                                            §§goto(addr1311);
                                                         }
                                                         §§goto(addr1295);
                                                      }
                                                   }
                                                   §§goto(addr1303);
                                                }
                                                §§goto(addr1311);
                                             }
                                             §§goto(addr1286);
                                          }
                                       }
                                       §§goto(addr1278);
                                    }
                                    §§goto(addr1295);
                              }
                              return;
                              addr1834:
                           }
                           else
                           {
                              addr1829:
                              §§goto(addr1834);
                           }
                        }
                        §§goto(addr1834);
                     }
                     else
                     {
                        §§push(b2Manifold.§=!m§);
                        if(!(_loc19_ && param1))
                        {
                           §§push(_loc17_);
                           if(_loc18_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc19_ && param1))
                                 {
                                    §§push(1);
                                    if(!_loc18_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr1811:
                                    §§push(2);
                                    if(_loc18_ || this)
                                    {
                                    }
                                 }
                                 §§goto(addr1834);
                              }
                              else
                              {
                                 §§push(b2Manifold.§3"f§);
                                 if(!_loc19_)
                                 {
                                    addr1810:
                                    if(§§pop() === _loc17_)
                                    {
                                       §§goto(addr1811);
                                    }
                                    else
                                    {
                                       §§goto(addr1834);
                                       §§push(3);
                                    }
                                    §§goto(addr1834);
                                 }
                              }
                              §§goto(addr1829);
                           }
                        }
                        §§goto(addr1810);
                     }
                  }
                  §§goto(addr1810);
               }
               §§goto(addr1834);
            }
            §§goto(addr1777);
         }
         §§goto(addr1835);
      }
   }
}
