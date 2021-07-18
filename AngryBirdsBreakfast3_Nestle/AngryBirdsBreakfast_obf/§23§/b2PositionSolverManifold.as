package §23§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §?d§:b2Vec2;
      
      private static var §,!2§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?d§ = new b2Vec2();
         }
         do
         {
            §,!2§ = new b2Vec2();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public var §!!f§:b2Vec2;
      
      public var §`9§:Vector.<b2Vec2>;
      
      public var §!!A§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§!!f§ = new b2Vec2();
               addr36:
               if(_loc3_ || _loc1_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§!!A§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                        addr64:
                        addr77:
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§`9§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr36);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr64);
                        }
                     }
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
                        this.§`9§[_loc1_] = new b2Vec2();
                        while(true)
                        {
                           _loc1_++;
                        }
                        addr117:
                     }
                     while(_loc2_)
                     {
                        §§goto(addr117);
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §6R§(param1:b2ContactConstraint) : void
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
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         if(!(_loc19_ && this))
         {
            b2Settings.b2Assert(param1.§#!1§ > 0);
         }
         §§push(param1.type);
         if(!_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!_loc19_)
            {
               §§push(b2Manifold.§9!+§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc18_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc19_)
                           {
                              addr1874:
                              if(§§pop() === _loc17_)
                              {
                                 addr1876:
                                 §§push(2);
                                 if(!_loc18_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        else
                        {
                           addr1856:
                           §§push(1);
                           if(!(_loc18_ || _loc2_))
                           {
                              §§goto(addr1874);
                           }
                        }
                        §§goto(addr1874);
                     }
                     else
                     {
                        §§push(b2Manifold.§'h§);
                        if(!_loc19_)
                        {
                           §§push(_loc17_);
                           if(!(_loc19_ && param1))
                           {
                              addr1853:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc18_)
                                 {
                                    §§goto(addr1856);
                                 }
                                 §§goto(addr1876);
                              }
                              else
                              {
                                 §§push(b2Manifold.§!F§);
                                 if(!(_loc19_ && _loc3_))
                                 {
                                    §§goto(addr1874);
                                 }
                                 addr1895:
                                 loop96:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc5_ = param1.§9!w§.m_xf.R;
                                       _loc6_ = param1.localPoint;
                                       if(!(_loc19_ && _loc2_))
                                       {
                                          §§push(param1.§9!w§);
                                          if(!(_loc19_ && _loc3_))
                                          {
                                             §§push(§§pop().m_xf);
                                             if(!_loc19_)
                                             {
                                                §§push(§§pop().position);
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc18_ || _loc2_)
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(_loc18_ || _loc2_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_)
                                                               {
                                                                  §§push(_loc5_.col2);
                                                                  if(!(_loc19_ && _loc3_))
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
                                                                              addr146:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          addr170:
                                                                                          §§push(param1.§9!w§.m_xf);
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             addr179:
                                                                                             §§push(§§pop().position.y);
                                                                                             if(!(_loc19_ && _loc3_))
                                                                                             {
                                                                                                addr187:
                                                                                                §§push(_loc5_.col1.y);
                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr213:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr204:
                                                                                                         §§push(_loc5_.col2.y);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr209:
                                                                                                            §§push(§§pop() * _loc6_.y);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc18_ || _loc2_)
                                                                                                      {
                                                                                                         addr222:
                                                                                                         _loc10_ = §§pop();
                                                                                                         _loc5_ = param1.§>!W§.m_xf.R;
                                                                                                         _loc6_ = param1.§>Q§[0].localPoint;
                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(param1.§>!W§);
                                                                                                            loop0:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().m_xf);
                                                                                                               addr681:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().position);
                                                                                                                  addr682:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     addr683:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col1);
                                                                                                                        addr685:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr686:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              addr688:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr689:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                    addr691:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       addr692:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          addr694:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr695:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr696:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   addr697:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr698:
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
                                                                                                            addr680:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§>!W§);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().m_xf);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop().position);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_.col1);
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.col2);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().y);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc19_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(_loc18_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   while(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr676:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     while(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr610:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc13_ = §§pop();
                                                                                                                                                                              addr611:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 continue loop28;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc19_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr584);
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr676);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr584);
                                                                                                                                                            §§goto(addr447);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr692);
                                                                                                                                                   addr671:
                                                                                                                                                }
                                                                                                                                                §§goto(addr694);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr464:
                                                                                                                                             if(_loc19_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(!(_loc19_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr483);
                                                                                                                                                }
                                                                                                                                                §§goto(addr533);
                                                                                                                                             }
                                                                                                                                             §§goto(addr688);
                                                                                                                                          }
                                                                                                                                          §§goto(addr695);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr691);
                                                                                                                                 }
                                                                                                                                 if(!(_loc18_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr464);
                                                                                                                                 }
                                                                                                                                 §§goto(addr671);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§goto(addr685);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr682);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr681);
                                                                                                                  }
                                                                                                                  §§goto(addr682);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr705:
                                                                                                                  _loc5_ = §§pop().R;
                                                                                                                  _loc6_ = param1.§;!6§;
                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                  {
                                                                                                                     §§push(this.§!!f§);
                                                                                                                     if(!_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col1);
                                                                                                                        if(!(_loc19_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!(_loc19_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(!_loc19_)
                                                                                                                                       {
                                                                                                                                          addr759:
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr791:
                                                                                                                                                      §§push(this.§!!f§);
                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr794:
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr803:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr820:
                                                                                                                                                               addr806:
                                                                                                                                                               addr808:
                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr816:
                                                                                                                                                                  §§push(§§pop() * _loc6_.y);
                                                                                                                                                               }
                                                                                                                                                               §§pop().y = §§pop() + §§pop();
                                                                                                                                                               _loc5_ = param1.§9!w§.m_xf.R;
                                                                                                                                                               _loc6_ = param1.localPoint;
                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§9!w§);
                                                                                                                                                                  if(!(_loc19_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col1);
                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr890:
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            if(_loc19_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr965:
                                                                                                                                                                                                            §§push(_loc5_.col1.y);
                                                                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr975:
                                                                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr979:
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr982:
                                                                                                                                                                                                                     §§push(_loc5_.col2.y);
                                                                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr992:
                                                                                                                                                                                                                        §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr999:
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                                                                  addr1004:
                                                                                                                                                                                                                  _loc5_ = param1.§>!W§.m_xf.R;
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(0);
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc2_ = §§pop();
                                                                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc2_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1233:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr1237:
                                                                                                                                                                                                                        break loop96;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop55:
                                                                                                                                                                                                                     for(; §§pop() < param1.§#!1§; §§goto(addr1233))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc6_ = param1.§>Q§[_loc2_].localPoint;
                                                                                                                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1.§>!W§);
                                                                                                                                                                                                                           loop56:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop().m_xf);
                                                                                                                                                                                                                              addr1198:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().position);
                                                                                                                                                                                                                                 addr1199:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().x);
                                                                                                                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc5_.col1);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1222:
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc5_.col2);
                                                                                                                                                                                                                                                   addr1224:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().x);
                                                                                                                                                                                                                                                      addr1225:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_.y);
                                                                                                                                                                                                                                                         addr1227:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1222:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                addr1229:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr1230:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr1231:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr1228:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1222);
                                                                                                                                                                                                                                          addr1120:
                                                                                                                                                                                                                                          §§push(_loc5_.col1);
                                                                                                                                                                                                                                          if(_loc19_ && _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1146:
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_.col2);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_.y);
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1172:
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1178:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§!!A§[_loc2_] = (_loc3_ - _loc7_) * this.§!!f§.x + (_loc4_ - _loc8_) * this.§!!f§.y - param1.radius;
                                                                                                                                                                                                                                                                                 while(!(_loc19_ && this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§`9§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                    loop71:
                                                                                                                                                                                                                                                                                    while(_loc18_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop56;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          loop73:
                                                                                                                                                                                                                                                                                          do
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§`9§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                             while(!_loc19_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc2_++;
                                                                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop73;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop71;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(false);
                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                          continue loop55;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr1230);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1231);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1229);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr1227);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1229);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr1225);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1172);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr1224);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr1222);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1224);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1172);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1228);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1172);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1146);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1231);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1064);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1237);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr992);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr982);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr938:
                                                                                                                                                                                                            §§push(param1.§9!w§.m_xf);
                                                                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr957:
                                                                                                                                                                                                               §§push(§§pop().position.y);
                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr965);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr999);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1004);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr975);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr979);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr992);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr979);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr982);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr975);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr979);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr890);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr965);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr957);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr979);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr938);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr820);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr816);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr806);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr820);
                                                                                                                                             }
                                                                                                                                             §§goto(addr803);
                                                                                                                                          }
                                                                                                                                          §§goto(addr816);
                                                                                                                                       }
                                                                                                                                       §§goto(addr803);
                                                                                                                                    }
                                                                                                                                    §§goto(addr808);
                                                                                                                                 }
                                                                                                                                 §§goto(addr794);
                                                                                                                              }
                                                                                                                              §§goto(addr759);
                                                                                                                           }
                                                                                                                           §§goto(addr820);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr791);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr680);
                                                                                                            }
                                                                                                            §§goto(addr681);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr221:
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                   }
                                                                                                   §§goto(addr213);
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§goto(addr204);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr222);
                                                                                    }
                                                                                    §§goto(addr187);
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr213);
                                                                           }
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr222);
                                    case 1:
                                       §§goto(addr705);
                                    case 2:
                                       _loc5_ = param1.§>!W§.m_xf.R;
                                       _loc6_ = param1.§;!6§;
                                       §§push(param1.§9!w§.m_xf);
                                       if(_loc18_)
                                       {
                                          §§push(this.§!!f§);
                                          if(!_loc19_)
                                          {
                                             §§push(_loc5_.col1);
                                             if(!(_loc19_ && _loc3_))
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc6_.x);
                                                   if(_loc18_ || param1)
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
                                                               if(_loc18_ || this)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc18_ || this)
                                                                  {
                                                                     addr1308:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc19_ && _loc3_))
                                                                     {
                                                                        addr1316:
                                                                        §§pop().x = §§pop();
                                                                        if(_loc18_)
                                                                        {
                                                                           addr1323:
                                                                           addr1321:
                                                                           §§push(this.§!!f§);
                                                                           §§push(_loc5_.col1.y);
                                                                           if(_loc19_ && param1)
                                                                           {
                                                                           }
                                                                           addr1343:
                                                                           §§push(_loc5_.col2.y);
                                                                           if(_loc18_)
                                                                           {
                                                                              addr1352:
                                                                              §§pop().y = §§pop() + §§pop() * _loc6_.y;
                                                                              addr1353:
                                                                              _loc5_ = param1.§>!W§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(param1.§>!W§);
                                                                                 if(!(_loc19_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!(_loc19_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(_loc5_.col1);
                                                                                             if(!(_loc19_ && this))
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(!(_loc19_ && _loc3_))
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(!(_loc19_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr1439:
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc19_ && this))
                                                                                                                  {
                                                                                                                     addr1451:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc19_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              addr1475:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!(_loc19_ && param1))
                                                                                                                              {
                                                                                                                                 addr1485:
                                                                                                                                 §§push(param1.§>!W§.m_xf);
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    addr1494:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1497:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(!(_loc19_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr1507:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr1528:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1519:
                                                                                                                                                §§push(_loc5_.col2.y);
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   addr1524:
                                                                                                                                                   §§push(§§pop() * _loc6_.y);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1532:
                                                                                                                                                _loc8_ = Number(§§pop());
                                                                                                                                                _loc5_ = param1.§9!w§.m_xf.R;
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         loop75:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            addr1767:
                                                                                                                                                            loop76:
                                                                                                                                                            for(; §§pop() < param1.§#!1§; continue loop75)
                                                                                                                                                            {
                                                                                                                                                               _loc6_ = param1.§>Q§[_loc2_].localPoint;
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§9!w§);
                                                                                                                                                                  loop77:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     addr1745:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        addr1746:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1747:
                                                                                                                                                                           loop80:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col1);
                                                                                                                                                                              addr1749:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 addr1750:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          addr1757:
                                                                                                                                                                                          addr1678:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc19_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr1697:
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1709:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1717:
                                                                                                                                                                                                         §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc19_ && _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop80;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc4_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.§!!A§[_loc2_] = (_loc3_ - _loc7_) * this.§!!f§.x + (_loc4_ - _loc8_) * this.§!!f§.y - param1.radius;
                                                                                                                                                                                                               loop93:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1572:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§`9§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                                     continue loop93;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop76;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1741:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr1758:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                                                                            addr1760:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               addr1761:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  addr1762:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     addr1763:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1758:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                         continue loop77;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1760);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1761);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1709);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1757);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1758);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1741);
                                                                                                                                                            }
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr1772:
                                                                                                                                                               §§push(this.§!!f§);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§!!f§);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-1);
                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              if(!(_loc19_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr1806:
                                                                                                                                                                                 addr1804:
                                                                                                                                                                                 addr1802:
                                                                                                                                                                                 §§push(this.§!!f§);
                                                                                                                                                                                 §§push(this.§!!f§.y);
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1811:
                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                 addr1812:
                                                                                                                                                                                 break loop96;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1812);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1811);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1806);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1804);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1802);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1772);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1767);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1806);
                                                                                                                                                addr1531:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1532);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1528);
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr1519);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1531);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1532);
                                                                                                                           }
                                                                                                                           §§goto(addr1497);
                                                                                                                        }
                                                                                                                        §§goto(addr1475);
                                                                                                                     }
                                                                                                                     §§goto(addr1528);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1524);
                                                                                                            }
                                                                                                            §§goto(addr1451);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1519);
                                                                                                   }
                                                                                                   §§goto(addr1439);
                                                                                                }
                                                                                                §§goto(addr1507);
                                                                                             }
                                                                                             §§goto(addr1497);
                                                                                          }
                                                                                          §§goto(addr1532);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1494);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1485);
                                                                              addr1351:
                                                                              addr1348:
                                                                              addr1350:
                                                                           }
                                                                           §§goto(addr1351);
                                                                        }
                                                                        §§goto(addr1353);
                                                                     }
                                                                     §§push(_loc6_.x);
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc19_)
                                                                        {
                                                                           §§goto(addr1343);
                                                                        }
                                                                        §§goto(addr1352);
                                                                     }
                                                                  }
                                                                  §§goto(addr1348);
                                                               }
                                                               §§goto(addr1350);
                                                            }
                                                            §§goto(addr1308);
                                                         }
                                                      }
                                                      §§goto(addr1343);
                                                   }
                                                   §§goto(addr1352);
                                                }
                                                §§goto(addr1316);
                                             }
                                             §§goto(addr1323);
                                          }
                                          §§goto(addr1321);
                                       }
                                       §§goto(addr1352);
                                 }
                                 return;
                                 addr1894:
                              }
                              §§goto(addr1894);
                           }
                           §§goto(addr1874);
                        }
                     }
                     §§goto(addr1894);
                  }
                  §§goto(addr1853);
               }
               §§goto(addr1874);
            }
            §§goto(addr1876);
         }
         §§goto(addr1895);
      }
   }
}
